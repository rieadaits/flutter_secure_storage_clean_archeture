import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_fintech_task/src/data/data_sources/service/authentication_service.dart';
import 'package:flutter_fintech_task/src/data/models/login_response.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import '../../../core/constant/storage_keys.dart';
import '../../../core/error/dio_failures_mapper.dart';
import '../../../core/error/falures.dart';
import '../../../domain/entities/authentication/login.dart';
import '../../models/login_body.dart';

abstract class AuthenticationRemoteDataSources {
  Future<Either<Failure, Login>> login(LoginBody body);
}

class AuthenticationRemoteDataSourcesImpl
    implements AuthenticationRemoteDataSources {
  final FlutterSecureStorage storage;
  final AuthenticationService authenticationService;

  AuthenticationRemoteDataSourcesImpl({
    required this.authenticationService,
    required this.storage,
  });

  @override
  Future<Either<Failure, Login>> login(LoginBody body) async {
    try {
      final response = await authenticationService.login(body);
      await storage.write(
        key: StorageKeys.accessToken ?? "access",
        value: response.accessToken,
      );
      await storage.write(
        key: StorageKeys.refreshToken ?? "refresh",
        value: response.refreshToken,
      );
      return Right(response.toEntity());
    } on DioException catch (e) {
      return Left(DioFailureMapper.map(e));
    } catch (e) {
      return const Left(UnknownFailure("Unexpected error occurred", null));
    }
  }
}
