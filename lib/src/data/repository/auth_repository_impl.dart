import 'package:dartz/dartz.dart';
import 'package:flutter_fintech_task/src/core/error/falures.dart';
import 'package:flutter_fintech_task/src/data/data_sources/remote_data_sources/authentication/authentication_remote_data_sources.dart';
import 'package:flutter_fintech_task/src/data/models/login_body.dart';
import 'package:flutter_fintech_task/src/domain/entities/authentication/login.dart';
import 'package:flutter_fintech_task/src/domain/repositories/auth_repository/auth_repository.dart';


class AuthRepositoryImpl implements AuthRepository {
  final AuthenticationRemoteDataSources remoteDataSource;

  AuthRepositoryImpl({required this.remoteDataSource});

  @override
  Future<Either<Failure, Login>> login(LoginBody body) async => await remoteDataSource.login(body);
}