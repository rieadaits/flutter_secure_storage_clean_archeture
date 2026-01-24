import 'package:flutter_secure_storage/flutter_secure_storage.dart';

abstract class TokenStorage {
  Future<String?> getAccessToken();
  Future<String?> getRefreshToken();
  Future<bool> hasValidToken();
  Future<void> saveTokens({
    required String accessToken,
    required String refreshToken,
  });
  Future<void> clear();
}

class TokenStorageImpl implements TokenStorage {
  
  late final FlutterSecureStorage storage;

  TokenStorageImpl({required this.storage});

  @override
  Future<String?> getAccessToken() => storage.read(key: 'access_token');

  @override
  Future<String?> getRefreshToken() => storage.read(key: 'refresh_token');

  @override
  Future<bool> hasValidToken() async {
    final accessToken = await getAccessToken();
    final refreshToken = await getRefreshToken();
    return accessToken != null && refreshToken != null;
  }

  @override
  Future<void> saveTokens({
    required String accessToken,
    required String refreshToken,
  }) async {
    await storage.write(key: 'access_token', value: accessToken);
    await storage.write(key: 'refresh_token', value: refreshToken);
  }
  
  @override
  Future<void> clear() async => storage.deleteAll();
}
