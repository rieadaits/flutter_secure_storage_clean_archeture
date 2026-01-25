import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fintech_task/src/core/constant/api_urls.dart';
import 'package:flutter_fintech_task/src/core/network/token_storage.dart';
import 'package:flutter_fintech_task/src/core/route/navigation_service.dart';
import 'package:flutter_fintech_task/src/presentation/bloc/session_timmer_bloc/session_timer_bloc.dart';

class AuthInterceptor extends Interceptor {
  final Dio dio;
  final TokenStorage tokenStorage;
  final NavigationService navigationService;
  final SessionBloc sessionBloc;

  bool _isRefreshing = false;

  AuthInterceptor({
    required this.dio,
    required this.tokenStorage,
    required this.navigationService,
    required this.sessionBloc,
  });

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final token = await tokenStorage.getAccessToken();
    if (token != null) {
      options.headers['Authorization'] = 'Bearer $token';
    }
    handler.next(options);
  }

  @override
  Future<void> onError(
    DioException err,
    ErrorInterceptorHandler handler,
  ) async {
    final isUnauthorized = err.response?.statusCode == 401;
    final isRetry = err.requestOptions.extra['retry'] == true;

    if (isUnauthorized && !_isRefreshing && !isRetry) {
      _isRefreshing = true;

      try {
        await _refreshToken();
        _isRefreshing = false;

        final request = err.requestOptions;
        request.extra['retry'] = true;

        final response = await dio.fetch(request);
        return handler.resolve(response);
      } catch (e) {
        _isRefreshing = false;

        /// CENTRAL FORCE LOGOUT
        debugPrint('❌ AuthInterceptor: Token refresh failed - Force logout');
        await tokenStorage.clear();
        
        // Trigger session logout event
        sessionBloc.add(const SessionExpired());
      }
    }

    handler.next(err);
  }

  Future<void> _refreshToken() async {
    final refreshToken = await tokenStorage.getRefreshToken();

    if (refreshToken == null) {
      throw Exception("Refresh token missing");
    }

    final response = await dio.post(
      "${ApiUrls.baseURL}${ApiUrls.refreshToken}",
      data: {"refreshToken": refreshToken, "expiresInMins": "1"},
      options: Options(headers: {'Authorization': null}),
    );

    await tokenStorage.saveTokens(
      accessToken: response.data['accessToken'],
      refreshToken: response.data['refreshToken'],
    );
  }
}
