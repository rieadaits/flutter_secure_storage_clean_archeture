import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_fintech_task/src/data/data_sources/service/users_service.dart';
import 'package:flutter_fintech_task/src/data/models/user_response.dart';
import 'package:flutter_fintech_task/src/domain/entities/user_entity/user_entity.dart';
import '../../../core/error/dio_failures_mapper.dart';
import '../../../core/error/falures.dart';
import '../../../core/network/dio_client.dart';

abstract class UserRemoteDataSource {
  Future<Either<Failure, UserEntity>> getUser();
}

class UserRemoteDataSourceImpl implements UserRemoteDataSource {
  final DioClient client;
  final UsersService service;
  UserRemoteDataSourceImpl({required this.client, required this.service});

  @override
  Future<Either<Failure, UserEntity>> getUser() async {
    try {
      final data = await service.getUserData();
      return Right(data.toEntity());
    } on DioException catch (e) {
      return Left(DioFailureMapper.map(e));
    } catch (_) {
      return const Left(UnknownFailure("Unexpected error occurred", null));
    }
  }
}
