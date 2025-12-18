import 'package:dartz/dartz.dart';
import 'package:flutter_fintech_task/src/domain/entities/authentication/login.dart';

import '../../../core/error/falures.dart';
import '../../../data/models/login_body.dart';

abstract class AuthRepository {
  Future<Either<Failure, Login>> login(LoginBody body);
}
