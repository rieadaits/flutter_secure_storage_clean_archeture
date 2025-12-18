// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'refresh_token_body.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RefreshTokenBody {

@JsonKey(name: "refreshToken") String get refreshToken;@JsonKey(name: "expiresInMins") String get expiresInMins;
/// Create a copy of RefreshTokenBody
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RefreshTokenBodyCopyWith<RefreshTokenBody> get copyWith => _$RefreshTokenBodyCopyWithImpl<RefreshTokenBody>(this as RefreshTokenBody, _$identity);

  /// Serializes this RefreshTokenBody to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RefreshTokenBody&&(identical(other.refreshToken, refreshToken) || other.refreshToken == refreshToken)&&(identical(other.expiresInMins, expiresInMins) || other.expiresInMins == expiresInMins));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,refreshToken,expiresInMins);

@override
String toString() {
  return 'RefreshTokenBody(refreshToken: $refreshToken, expiresInMins: $expiresInMins)';
}


}

/// @nodoc
abstract mixin class $RefreshTokenBodyCopyWith<$Res>  {
  factory $RefreshTokenBodyCopyWith(RefreshTokenBody value, $Res Function(RefreshTokenBody) _then) = _$RefreshTokenBodyCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "refreshToken") String refreshToken,@JsonKey(name: "expiresInMins") String expiresInMins
});




}
/// @nodoc
class _$RefreshTokenBodyCopyWithImpl<$Res>
    implements $RefreshTokenBodyCopyWith<$Res> {
  _$RefreshTokenBodyCopyWithImpl(this._self, this._then);

  final RefreshTokenBody _self;
  final $Res Function(RefreshTokenBody) _then;

/// Create a copy of RefreshTokenBody
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? refreshToken = null,Object? expiresInMins = null,}) {
  return _then(_self.copyWith(
refreshToken: null == refreshToken ? _self.refreshToken : refreshToken // ignore: cast_nullable_to_non_nullable
as String,expiresInMins: null == expiresInMins ? _self.expiresInMins : expiresInMins // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [RefreshTokenBody].
extension RefreshTokenBodyPatterns on RefreshTokenBody {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RefreshTokenBody value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RefreshTokenBody() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RefreshTokenBody value)  $default,){
final _that = this;
switch (_that) {
case _RefreshTokenBody():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RefreshTokenBody value)?  $default,){
final _that = this;
switch (_that) {
case _RefreshTokenBody() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "refreshToken")  String refreshToken, @JsonKey(name: "expiresInMins")  String expiresInMins)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RefreshTokenBody() when $default != null:
return $default(_that.refreshToken,_that.expiresInMins);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "refreshToken")  String refreshToken, @JsonKey(name: "expiresInMins")  String expiresInMins)  $default,) {final _that = this;
switch (_that) {
case _RefreshTokenBody():
return $default(_that.refreshToken,_that.expiresInMins);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "refreshToken")  String refreshToken, @JsonKey(name: "expiresInMins")  String expiresInMins)?  $default,) {final _that = this;
switch (_that) {
case _RefreshTokenBody() when $default != null:
return $default(_that.refreshToken,_that.expiresInMins);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RefreshTokenBody implements RefreshTokenBody {
  const _RefreshTokenBody({@JsonKey(name: "refreshToken") required this.refreshToken, @JsonKey(name: "expiresInMins") required this.expiresInMins});
  factory _RefreshTokenBody.fromJson(Map<String, dynamic> json) => _$RefreshTokenBodyFromJson(json);

@override@JsonKey(name: "refreshToken") final  String refreshToken;
@override@JsonKey(name: "expiresInMins") final  String expiresInMins;

/// Create a copy of RefreshTokenBody
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RefreshTokenBodyCopyWith<_RefreshTokenBody> get copyWith => __$RefreshTokenBodyCopyWithImpl<_RefreshTokenBody>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RefreshTokenBodyToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RefreshTokenBody&&(identical(other.refreshToken, refreshToken) || other.refreshToken == refreshToken)&&(identical(other.expiresInMins, expiresInMins) || other.expiresInMins == expiresInMins));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,refreshToken,expiresInMins);

@override
String toString() {
  return 'RefreshTokenBody(refreshToken: $refreshToken, expiresInMins: $expiresInMins)';
}


}

/// @nodoc
abstract mixin class _$RefreshTokenBodyCopyWith<$Res> implements $RefreshTokenBodyCopyWith<$Res> {
  factory _$RefreshTokenBodyCopyWith(_RefreshTokenBody value, $Res Function(_RefreshTokenBody) _then) = __$RefreshTokenBodyCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "refreshToken") String refreshToken,@JsonKey(name: "expiresInMins") String expiresInMins
});




}
/// @nodoc
class __$RefreshTokenBodyCopyWithImpl<$Res>
    implements _$RefreshTokenBodyCopyWith<$Res> {
  __$RefreshTokenBodyCopyWithImpl(this._self, this._then);

  final _RefreshTokenBody _self;
  final $Res Function(_RefreshTokenBody) _then;

/// Create a copy of RefreshTokenBody
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? refreshToken = null,Object? expiresInMins = null,}) {
  return _then(_RefreshTokenBody(
refreshToken: null == refreshToken ? _self.refreshToken : refreshToken // ignore: cast_nullable_to_non_nullable
as String,expiresInMins: null == expiresInMins ? _self.expiresInMins : expiresInMins // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
