import 'package:dio/dio.dart';
import 'package:flutter_fintech_task/src/data/models/login_body.dart';

import 'package:retrofit/retrofit.dart';

import '../../../core/constant/api_urls.dart';
import '../../models/login_response.dart';

part 'authentication_service.g.dart';

@RestApi(baseUrl: "/auth")
abstract class AuthenticationService {
  factory AuthenticationService(Dio dio, {String baseUrl}) = _AuthenticationService;

  @POST(ApiUrls.login)
  Future<LoginResponse> login(@Body() LoginBody body);
}