import 'package:flutter_dotenv/flutter_dotenv.dart';

class StorageKeys {
  static final accessToken = dotenv.env['TOKEN'];
  static final refreshToken = dotenv.env['REFRESH'];
}