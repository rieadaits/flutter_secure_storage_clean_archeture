import 'package:flutter_secure_storage/flutter_secure_storage.dart';

abstract class TokenStorage {
  Future<String?> getAccessToken();
  Future<String?> getRefreshToken();
  Future<bool> hasValidToken();
  Future<void> saveTokens({
    required String accessToken,
    required String refreshToken,
  });

  //Save Strings value only
  Future<void> saveStringValuesOnly({required String key, required String value});

  //Get Strings value only
  Future<String?> getStringValuesOnly(String key);

  //Clear by Key value
  Future<void> clearByKey(String key);

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

  @override
  Future<void> saveStringValuesOnly({required String key, required String value}) async {
    await storage.write(key: key, value: value);
  }
  
  @override
  Future<String?> getStringValuesOnly(String key) async {
    return await storage.read(key: key);
  }

  @override
  Future<void> clearByKey(String key) async {
    await storage.delete(key: key);
  }
}
