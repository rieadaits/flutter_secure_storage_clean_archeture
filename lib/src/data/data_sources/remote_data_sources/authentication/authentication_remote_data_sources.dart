import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter_fintech_task/src/data/models/login_response.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:http/http.dart' as http;

import '../../../../core/constant/api_urls.dart';
import '../../../../core/constant/storage_keys.dart';
import '../../../../core/error/falures.dart';
import '../../../../domain/entities/authentication/login.dart';
import '../../../models/login_body.dart';

abstract class AuthenticationRemoteDataSources {
  Future<Either<Failure, Login>> login(LoginBody body);
}

class AuthenticationRemoteDataSourcesImpl
    implements AuthenticationRemoteDataSources {
  final http.Client client;
  final FlutterSecureStorage storage;

  AuthenticationRemoteDataSourcesImpl({required this.client, required this.storage});

  @override
  Future<Either<Failure, Login>> login(LoginBody body) async {
    try {
      final response = await client.post(
        Uri.parse('${ApiUrls.baseURL}${ApiUrls.login}'),
        headers: {'Accept': 'application/json'},
        body: body.toJson(),
      );

      if (response.statusCode == 200) {
        final data = LoginResponse.fromJson(json.decode(response.body));
        await storage.write(key: StorageKeys.accessToken ?? "access", value: data.accessToken);
        await storage.write(key: StorageKeys.refreshToken ?? "refresh", value: data.refreshToken);
        return Right(data.toEntity());
      } else {
        final errorMessage =
            json.decode(response.body)['message'] ??
            'Failed to Login';
        return Left(ServerFailure(errorMessage) as Failure);
      }
    } catch (e) {
      return Left(ServerFailure(e.toString()) as Failure);
    }
  }
}
