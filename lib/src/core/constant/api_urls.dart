import 'package:flutter_dotenv/flutter_dotenv.dart';

class ApiUrls {
  static final baseURL = dotenv.env['BASE_URL'];

  /// Authentication
  static const String register = '/auth/register/';
  static const String login = '/auth/login';
  static const String forgotPassword = '/auth/forgot_password/';
  static const String resetPassword = '/auth/reset_password/';
  static const String refreshToken = '/auth/refresh';

  /// User
  static const String getUser = '/auth/me';
}
