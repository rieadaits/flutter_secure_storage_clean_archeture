import 'package:dartz/dartz.dart';
import 'package:flutter_fintech_task/src/core/constant/storage_keys.dart';
import 'package:flutter_fintech_task/src/core/error/falures.dart';
import 'package:flutter_fintech_task/src/data/data_sources/remote_data_sources/authentication/authentication_remote_data_sources.dart';
import 'package:flutter_fintech_task/src/data/models/login_body.dart';
import 'package:flutter_fintech_task/src/domain/entities/authentication/login.dart';
import 'package:flutter_fintech_task/src/domain/repositories/auth_repository/auth_repository.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';


class AuthRepositoryImpl implements AuthRepository {
  final AuthenticationRemoteDataSources remoteDataSource;
  final FlutterSecureStorage storage;

  AuthRepositoryImpl({required this.remoteDataSource, required this.storage});

  @override
  Future<Either<Failure, Login>> login(LoginBody body) async {
    try {
      final response = await remoteDataSource.login(body);
      await storage.write(key: StorageKeys.accessToken, value: response.accessToken);
      await storage.write(key: StorageKeys.refreshToken, value: response.refreshToken);
      return Right(response);
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }
}