import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_fintech_task/src/data/models/login_response.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import '../../../core/constant/api_urls.dart';
import '../../../core/constant/storage_keys.dart';
import '../../../core/error/falures.dart';
import '../../../core/network/dio_client.dart';
import '../../../domain/entities/authentication/login.dart';
import '../../models/login_body.dart';

abstract class AuthenticationRemoteDataSources {
  Future<Either<Failure, Login>> login(LoginBody body);
}

class AuthenticationRemoteDataSourcesImpl
    implements AuthenticationRemoteDataSources {
  final DioClient client;
  final FlutterSecureStorage storage;

  AuthenticationRemoteDataSourcesImpl({required this.client, required this.storage});

  @override
  Future<Either<Failure, Login>> login(LoginBody body) async {
    try {
      final response = await client.post(
          '${ApiUrls.baseURL}${ApiUrls.login}',
          data: body.toJson(),
        );

        final data = LoginResponse.fromJson(response.data);
        await storage.write(key: StorageKeys.accessToken ?? "access", value: data.accessToken);
        await storage.write(key: StorageKeys.refreshToken ?? "refresh", value: data.refreshToken);
        return Right(data.toEntity());
      
    }on DioException catch(e) {
      return Left(ServerFailure(e.response!.data['message'], e.response!.statusCode) as Failure);
    }
  }
}
