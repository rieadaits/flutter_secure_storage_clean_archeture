import 'package:dio/dio.dart';
import 'package:flutter_fintech_task/src/core/constant/api_urls.dart';
import 'package:flutter_fintech_task/src/core/di/injection_container.dart';
import 'package:flutter_fintech_task/src/core/network/auth_interceptor.dart';
import 'package:flutter_fintech_task/src/core/network/connectivity_interceptor.dart';
import 'package:flutter_fintech_task/src/core/network/network_info.dart';
import 'package:flutter_fintech_task/src/core/network/retry_interceptor.dart';
import 'package:flutter_fintech_task/src/core/network/token_storage.dart';
import 'package:flutter_fintech_task/src/core/route/navigation_service.dart';
import 'package:flutter_fintech_task/src/presentation/bloc/session_timmer_bloc/session_timer_bloc.dart';

class DioClient {
  late final Dio _dio;

  DioClient() {
    _dio = Dio(
      BaseOptions(
        baseUrl: ApiUrls.baseURL ?? '',
        connectTimeout: const Duration(seconds: 15),
        receiveTimeout: const Duration(seconds: 15),
        sendTimeout: const Duration(seconds: 15),
        headers: {
          "Content-Type": "application/json",
          "Accept": "application/json",
        },
      ),
    );

    _dio.interceptors.addAll([
      ConnectivityInterceptor(networkInfo: sl<NetworkInfo>()),
      AuthInterceptor(
        dio: _dio,
        sessionBloc: sl<SessionBloc>(),
        tokenStorage: sl<TokenStorage>(),
        navigationService: sl<NavigationService>(),
      ),
      RetryInterceptor(dio: _dio),
      LogInterceptor(requestBody: true, responseBody: true),
    ]);
  }

  // Expose the Dio instance for Retrofit
  Dio get dio => _dio;
}
