import 'package:dio/dio.dart';
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
        connectTimeout: const Duration(seconds: 15),
        receiveTimeout: const Duration(seconds: 15),
        sendTimeout: const Duration(seconds: 15),
        headers: {"Content-Type": "application/json"},
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

  // GET METHOD
  Future<Response> get(
    String url, {
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      final Response response = await _dio.get(
        url,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onReceiveProgress: onReceiveProgress,
      );
      return response;
    } on DioException {
      rethrow;
    }
  }

  // POST METHOD
  Future<Response> post(
    String url, {
    data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      final Response response = await _dio.post(
        url,
        data: data,
        options: options,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );
      return response;
    } catch (e) {
      rethrow;
    }
  }

  // PUT METHOD
  Future<Response> put(
    String url, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      final Response response = await _dio.put(
        url,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );
      return response;
    } catch (e) {
      rethrow;
    }
  }

  // DELETE METHOD
  Future<dynamic> delete(
    String url, {
    data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
  }) async {
    try {
      final Response response = await _dio.delete(
        url,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
      );
      return response.data;
    } catch (e) {
      rethrow;
    }
  }

}
