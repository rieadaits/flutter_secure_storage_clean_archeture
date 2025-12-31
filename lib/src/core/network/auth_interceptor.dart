import 'package:dio/dio.dart';
import 'package:flutter_fintech_task/src/core/constant/api_urls.dart';
import 'package:flutter_fintech_task/src/core/network/token_storage.dart';

class AuthInterceptor extends Interceptor {
  final Dio dio;
  final TokenStorage tokenStorage;
  bool _isRefreshing = false;

  AuthInterceptor({required this.dio, required this.tokenStorage});

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
    if (err.response?.statusCode == 401 &&
        !_isRefreshing &&
        err.requestOptions.extra['retry'] != true) {
      _isRefreshing = true;

      try {
        await _refreshToken();
        _isRefreshing = false;

        final requestOptions = err.requestOptions;
        requestOptions.extra['retry'] = true;

        final response = await dio.fetch(requestOptions);
        return handler.resolve(response);
      } catch (_) {
        _isRefreshing = false;
        await tokenStorage.clear();
      }
    }

    handler.next(err);
  }

  Future<void> _refreshToken() async {
    final refreshToken = await tokenStorage.getRefreshToken();

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
