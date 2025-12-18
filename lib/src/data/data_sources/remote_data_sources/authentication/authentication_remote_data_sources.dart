import 'dart:convert';

import 'package:flutter_fintech_task/src/data/models/login_response.dart';
import 'package:http/http.dart' as http;

import '../../../../core/constant/api_urls.dart';
import '../../../../core/error/exceptions.dart';
import '../../../../domain/entities/authentication/login.dart';
import '../../../models/login_body.dart';

abstract class AuthenticationRemoteDataSources {
  Future<Login> login(LoginBody body);
}

class AuthenticationRemoteDataSourcesImpl
    implements AuthenticationRemoteDataSources {
  final http.Client client;

  AuthenticationRemoteDataSourcesImpl({required this.client});

  @override
  Future<Login> login(LoginBody body) async {
    try {
      final response = await client.post(
        Uri.parse('${ApiUrls.baseURL}${ApiUrls.login}'),
        headers: {'Accept': 'application/json'},
        body: body.toJson(),
      );

      if (response.statusCode == 200) {
        final data = LoginResponse.fromJson(json.decode(response.body));
        return data.toEntity();
      } else {
        final errorMessage =
            json.decode(response.body)['message'] ??
            'Failed to Login';
        throw ServerException(errorMessage);
      }
    } catch (e) {
      throw ServerException(e.toString());
    }
  }
}
