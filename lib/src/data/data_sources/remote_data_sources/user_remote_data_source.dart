import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_fintech_task/src/core/constant/api_urls.dart';
import 'package:flutter_fintech_task/src/data/models/user_response.dart';
import 'package:flutter_fintech_task/src/domain/entities/user_entity/user_entity.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import '../../../core/constant/storage_keys.dart';
import '../../../core/error/dio_failures_mapper.dart';
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
    } on DioException catch (e) {
      return Left(DioFailureMapper.map(e));
    } catch (_) {
      return const Left(UnknownFailure("Unexpected error occurred", null));
    }
  }
}
