import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter_fintech_task/src/core/constant/api_urls.dart';
import 'package:flutter_fintech_task/src/data/models/refresh_token_body.dart'
    show RefreshTokenBody;
import 'package:flutter_fintech_task/src/data/models/refresh_token_response.dart';
import 'package:flutter_fintech_task/src/data/models/user_response.dart';
import 'package:flutter_fintech_task/src/domain/entities/user_entity/user_entity.dart';
import 'package:http/http.dart' as http;

import '../../../core/constant/storage_keys.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import '../../../core/error/falures.dart';

abstract class UserRemoteDataSource {
  Future<Either<Failure, UserEntity>> getUser();
}

class UserRemoteDataSourceImpl implements UserRemoteDataSource {
  final http.Client client;
  final FlutterSecureStorage storage;
  UserRemoteDataSourceImpl({required this.client, required this.storage});

  @override
  Future<Either<Failure, UserEntity>> getUser() async {
    final accessToken =
        (await storage.read(key: StorageKeys.accessToken ?? "access")) ?? "";
    if (accessToken.isEmpty) {
      return Left(ServerFailure('No access token found', 401) as Failure);
    }
    try {
      final response = await client.get(
        Uri.parse('${ApiUrls.baseURL}${ApiUrls.getUser}'),
        headers: {
          'Accept': 'application/json',
          'Authorization': 'Bearer $accessToken',
        },
      );
      if (response.statusCode == 200) {
        final data = UserResponse.fromJson(json.decode(response.body));
        return Right(data.toEntity());
      } else if (response.statusCode == 401) {
        final refreshToken =
            (await storage.read(key: StorageKeys.refreshToken ?? "refresh")) ??
            "";
        if (refreshToken.isEmpty) {
          return Left(ServerFailure('Unauthorized', 401) as Failure);
        }
        final response = await client.post(
          Uri.parse('${ApiUrls.baseURL}${ApiUrls.refreshToken}'),
          headers: {
            'Accept': 'application/json',
            'Authorization': 'Bearer $refreshToken',
          },
          body: RefreshTokenBody(
            refreshToken: refreshToken,
            expiresInMins: '1',
          ).toJson(),
        );
        if (response.statusCode == 200) {
          final data = RefreshTokenResponse.fromJson(
            json.decode(response.body),
          );
          await storage.write(
            key: StorageKeys.accessToken ?? "access",
            value: data.accessToken,
          );
          await storage.write(
            key: StorageKeys.refreshToken ?? "refresh",
            value: data.refreshToken,
          );
          return getUser();
        } else {
          return Left(
            ServerFailure('Failed to refresh token', response.statusCode)
                as Failure,
          );
        }
      } else {
        final errorMessage =
            json.decode(response.body)['message'] ?? 'Failed to get user';
        return Left(
          ServerFailure(errorMessage, response.statusCode) as Failure,
        );
      }
    } catch (e) {
      return Left(ServerFailure(e.toString(), 500) as Failure);
    }
  }
}
