import 'package:flutter_dotenv/flutter_dotenv.dart';

class ApiUrls {
  static final baseURL = dotenv.env['BASE_URL'];

  /// Authentication
  static const String register = '/register';
  static const String login = '/login';
  static const String forgotPassword = '/forgot_password';
  static const String resetPassword = '/reset_password';
  static const String refreshToken = '/refresh';

  /// User
  static const String getUser = '/me';
}
