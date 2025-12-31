import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class TokenStorage {
  late final FlutterSecureStorage storage;

  TokenStorage({required this.storage});

  Future<String?> getAccessToken() => storage.read(key: 'access_token');
  Future<String?> getRefreshToken() => storage.read(key: 'refresh_token');

  Future<void> saveTokens({
    required String accessToken,
    required String refreshToken,
  }) async {
    await storage.write(key: 'access_token', value: accessToken);
    await storage.write(key: 'refresh_token', value: refreshToken);
  }

  Future<void> clear() async => storage.deleteAll();
}
