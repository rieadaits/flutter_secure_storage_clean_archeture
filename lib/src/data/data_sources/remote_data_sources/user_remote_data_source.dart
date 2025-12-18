import 'dart:convert';

import 'package:flutter_fintech_task/src/core/constant/api_urls.dart';
import 'package:flutter_fintech_task/src/data/models/user_response.dart';
import 'package:flutter_fintech_task/src/domain/entities/user_entity/user_entity.dart';
import 'package:http/http.dart' as http;

import '../../../core/constant/storage_keys.dart';
import '../../../core/error/exceptions.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';


abstract class UserRemoteDataSource {
  Future<UserEntity> getUser();
}

class UserRemoteDataSourceImpl implements UserRemoteDataSource {
  final http.Client client;
  final FlutterSecureStorage storage;
  UserRemoteDataSourceImpl({required this.client, required this.storage});

  @override
  Future<UserEntity> getUser() async {
    final accessToken = await storage.read(key: StorageKeys.accessToken);
    try {
      final response = await client.get(Uri.parse('${ApiUrls.baseURL}${ApiUrls.getUser}'), 
      headers: {'Accept': 'application/json', 'Authorization': 'Bearer $accessToken'});
    if (response.statusCode == 200) {
      final data = UserResponse.fromJson(json.decode(response.body));
      return data.toEntity();
    } else {
      final errorMessage = json.decode(response.body)['message'] ?? 'Failed to get user';
        throw ServerException(errorMessage);
      }
    } catch (e) {
      throw ServerException(e.toString());
    }
  }
}