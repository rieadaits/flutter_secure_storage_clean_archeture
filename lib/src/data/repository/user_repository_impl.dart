import 'package:dartz/dartz.dart';

import 'package:flutter_fintech_task/src/core/error/falures.dart';
import 'package:flutter_fintech_task/src/data/data_sources/remote_data_sources/user_remote_data_source.dart';

import 'package:flutter_fintech_task/src/domain/entities/user_entity/user_entity.dart';

import '../../domain/repositories/user_repository/user_repository.dart';

class UserRepositoryImpl implements UserRepository {
  final UserRemoteDataSource remoteDataSource;

  UserRepositoryImpl({required this.remoteDataSource});
  @override
  Future<Either<Failure, UserEntity>> getUser() async {
      final result = await remoteDataSource.getUser();
      return result;
  }
 }