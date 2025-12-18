import 'package:flutter_fintech_task/src/domain/entities/authentication/login.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_response.freezed.dart';
part 'login_response.g.dart';

@freezed
abstract class LoginResponse with _$LoginResponse {
  const factory LoginResponse({
    @JsonKey(name: "accessToken") required String accessToken,
    @JsonKey(name: "refreshToken") required String refreshToken,
    @JsonKey(name: "id") required int id,
    @JsonKey(name: "username") required String username,
    @JsonKey(name: "email") required String email,
    @JsonKey(name: "firstName") required String firstName,
    @JsonKey(name: "lastName") required String lastName,
    @JsonKey(name: "gender") required String gender,
    @JsonKey(name: "image") required String image,
  }) = _LoginResponse;

  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);
}

extension LoginResponseXModel on LoginResponse {
  Login toEntity() {
    return Login(
      email: email,
      username: username,
      firstName: firstName,
      lastName: lastName,
      gender: gender,
      image: image,
      id: id,
      accessToken: accessToken,
      refreshToken: refreshToken,
    );
  }
}
