import 'package:dartz/dartz.dart';
import 'package:flutter_fintech_task/src/core/error/falures.dart';
import 'package:flutter_fintech_task/src/domain/entities/user_entity/user_entity.dart';

abstract class UserRepository {
  Future<Either<Failure, UserEntity>> getUser();
}