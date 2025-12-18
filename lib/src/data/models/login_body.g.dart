// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LoginBody _$LoginBodyFromJson(Map<String, dynamic> json) => _LoginBody(
  email: json['username'] as String,
  expiresInMins: json['expiresInMins'] as String,
  password: json['password'] as String,
);

Map<String, dynamic> _$LoginBodyToJson(_LoginBody instance) =>
    <String, dynamic>{
      'username': instance.email,
      'expiresInMins': instance.expiresInMins,
      'password': instance.password,
    };
