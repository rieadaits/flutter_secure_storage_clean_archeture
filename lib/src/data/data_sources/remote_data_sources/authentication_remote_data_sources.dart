import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_fintech_task/src/data/data_sources/service/authentication_service.dart';
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
  final FlutterSecureStorage storage;
  final AuthenticationService authenticationService;

  AuthenticationRemoteDataSourcesImpl({required this.authenticationService, required this.storage});

  @override
  Future<Either<Failure, Login>> login(LoginBody body) async {
    try {
      final response = await authenticationService.login(body);
      return Right(response.toEntity());
      
    }on DioException catch(e) {
      return Left(ServerFailure(e.response!.data['message'], e.response!.statusCode) as Failure);
    } catch(e) {
      return Left(ServerFailure(e.toString(), 500) as Failure);
    }
  }
}
