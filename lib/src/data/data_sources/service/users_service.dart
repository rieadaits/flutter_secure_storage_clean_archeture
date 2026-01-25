import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../../core/constant/api_urls.dart';
import '../../models/user_response.dart';

part 'users_service.g.dart';

@RestApi(baseUrl: "/auth")
abstract class UsersService {
  factory UsersService(Dio dio, {String baseUrl}) = _UsersService;

  @GET(ApiUrls.getUser)
  Future<UserResponse> getUserData();
}
