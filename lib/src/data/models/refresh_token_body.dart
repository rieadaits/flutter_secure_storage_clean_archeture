import 'package:freezed_annotation/freezed_annotation.dart';

part 'refresh_token_body.freezed.dart';
part 'refresh_token_body.g.dart';


@freezed
abstract class RefreshTokenBody with _$RefreshTokenBody {
    const factory RefreshTokenBody({
        @JsonKey(name: "refreshToken")
        required String refreshToken,
        @JsonKey(name: "expiresInMins")
        required String expiresInMins,
    }) = _RefreshTokenBody;

    factory RefreshTokenBody.fromJson(Map<String, dynamic> json) => _$RefreshTokenBodyFromJson(json);
}
