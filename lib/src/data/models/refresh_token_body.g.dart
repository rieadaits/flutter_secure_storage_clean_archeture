// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'refresh_token_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RefreshTokenBody _$RefreshTokenBodyFromJson(Map<String, dynamic> json) =>
    _RefreshTokenBody(
      refreshToken: json['refreshToken'] as String,
      expiresInMins: json['expiresInMins'] as String,
    );

Map<String, dynamic> _$RefreshTokenBodyToJson(_RefreshTokenBody instance) =>
    <String, dynamic>{
      'refreshToken': instance.refreshToken,
      'expiresInMins': instance.expiresInMins,
    };
