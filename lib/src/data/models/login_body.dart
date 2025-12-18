import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_body.freezed.dart';
part 'login_body.g.dart';

@freezed
abstract class LoginBody with _$LoginBody {
  const factory LoginBody({
    
    @JsonKey(name: "username") required String email, 
    @JsonKey(name: "expiresInMins") required String expiresInMins,
    @JsonKey(name: "password") required String password}) =
      _LoginBody;

  factory LoginBody.fromJson(Map<String, dynamic> json) =>
      _$LoginBodyFromJson(json);
}
