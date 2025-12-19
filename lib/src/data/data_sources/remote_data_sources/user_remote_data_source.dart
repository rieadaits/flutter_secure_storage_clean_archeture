import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_fintech_task/src/core/constant/api_urls.dart';
import 'package:flutter_fintech_task/src/data/models/refresh_token_body.dart'
    show RefreshTokenBody;
import 'package:flutter_fintech_task/src/data/models/refresh_token_response.dart';
import 'package:flutter_fintech_task/src/data/models/user_response.dart';
import 'package:flutter_fintech_task/src/domain/entities/user_entity/user_entity.dart';

import '../../../core/constant/storage_keys.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import '../../../core/error/falures.dart';
import '../../../core/network/dio_client.dart';

abstract class UserRemoteDataSource {
  Future<Either<Failure, UserEntity>> getUser();
}

class UserRemoteDataSourceImpl implements UserRemoteDataSource {
  final DioClient client;
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
        '${ApiUrls.baseURL}${ApiUrls.getUser}',
        options: Options(
          headers: {
            'Accept': 'application/json',
            'Authorization': 'Bearer $accessToken',
          },
        ),
      );
        final data = UserResponse.fromJson(response.data);
        return Right(data.toEntity());
      
    }on DioException catch(e) {
      if (e.response!.statusCode == 401) {
        final refreshToken =
            (await storage.read(key: StorageKeys.refreshToken ?? "refresh")) ??
            "";
        if (refreshToken.isEmpty) {
          return Left(ServerFailure('Unauthorized', 401) as Failure);
        }
        try{
          final response = await client.post(
          '${ApiUrls.baseURL}${ApiUrls.refreshToken}',
          options: Options(
            headers: {
              'Accept': 'application/json',
              'Authorization': 'Bearer $refreshToken',
            },
          ),
          data: RefreshTokenBody(
            refreshToken: "refreshToken",
            expiresInMins: '1',
          ).toJson(),
        );
        final data = RefreshTokenResponse.fromJson(response.data);
        await storage.write(
          key: StorageKeys.accessToken ?? "access",
          value: data.accessToken,
        );
        await storage.write(
          key: StorageKeys.refreshToken ?? "refresh",
          value: data.refreshToken,
        );
        return getUser();
        }on DioException catch(e) {
          return Left(ServerFailure(e.response!.data['message'], e.response!.statusCode) as Failure);
        }
        
      }
      return Left(ServerFailure(e.response!.data['message'], e.response!.statusCode) as Failure);
    }
  }
}
