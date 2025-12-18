// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_body.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LoginBody {

@JsonKey(name: "username") String get email;@JsonKey(name: "expiresInMins") String get expiresInMins;@JsonKey(name: "password") String get password;
/// Create a copy of LoginBody
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoginBodyCopyWith<LoginBody> get copyWith => _$LoginBodyCopyWithImpl<LoginBody>(this as LoginBody, _$identity);

  /// Serializes this LoginBody to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginBody&&(identical(other.email, email) || other.email == email)&&(identical(other.expiresInMins, expiresInMins) || other.expiresInMins == expiresInMins)&&(identical(other.password, password) || other.password == password));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,email,expiresInMins,password);

@override
String toString() {
  return 'LoginBody(email: $email, expiresInMins: $expiresInMins, password: $password)';
}


}

/// @nodoc
abstract mixin class $LoginBodyCopyWith<$Res>  {
  factory $LoginBodyCopyWith(LoginBody value, $Res Function(LoginBody) _then) = _$LoginBodyCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "username") String email,@JsonKey(name: "expiresInMins") String expiresInMins,@JsonKey(name: "password") String password
});




}
/// @nodoc
class _$LoginBodyCopyWithImpl<$Res>
    implements $LoginBodyCopyWith<$Res> {
  _$LoginBodyCopyWithImpl(this._self, this._then);

  final LoginBody _self;
  final $Res Function(LoginBody) _then;

/// Create a copy of LoginBody
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? email = null,Object? expiresInMins = null,Object? password = null,}) {
  return _then(_self.copyWith(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,expiresInMins: null == expiresInMins ? _self.expiresInMins : expiresInMins // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [LoginBody].
extension LoginBodyPatterns on LoginBody {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LoginBody value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LoginBody() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LoginBody value)  $default,){
final _that = this;
switch (_that) {
case _LoginBody():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LoginBody value)?  $default,){
final _that = this;
switch (_that) {
case _LoginBody() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "username")  String email, @JsonKey(name: "expiresInMins")  String expiresInMins, @JsonKey(name: "password")  String password)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LoginBody() when $default != null:
return $default(_that.email,_that.expiresInMins,_that.password);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "username")  String email, @JsonKey(name: "expiresInMins")  String expiresInMins, @JsonKey(name: "password")  String password)  $default,) {final _that = this;
switch (_that) {
case _LoginBody():
return $default(_that.email,_that.expiresInMins,_that.password);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "username")  String email, @JsonKey(name: "expiresInMins")  String expiresInMins, @JsonKey(name: "password")  String password)?  $default,) {final _that = this;
switch (_that) {
case _LoginBody() when $default != null:
return $default(_that.email,_that.expiresInMins,_that.password);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LoginBody implements LoginBody {
  const _LoginBody({@JsonKey(name: "username") required this.email, @JsonKey(name: "expiresInMins") required this.expiresInMins, @JsonKey(name: "password") required this.password});
  factory _LoginBody.fromJson(Map<String, dynamic> json) => _$LoginBodyFromJson(json);

@override@JsonKey(name: "username") final  String email;
@override@JsonKey(name: "expiresInMins") final  String expiresInMins;
@override@JsonKey(name: "password") final  String password;

/// Create a copy of LoginBody
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoginBodyCopyWith<_LoginBody> get copyWith => __$LoginBodyCopyWithImpl<_LoginBody>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LoginBodyToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoginBody&&(identical(other.email, email) || other.email == email)&&(identical(other.expiresInMins, expiresInMins) || other.expiresInMins == expiresInMins)&&(identical(other.password, password) || other.password == password));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,email,expiresInMins,password);

@override
String toString() {
  return 'LoginBody(email: $email, expiresInMins: $expiresInMins, password: $password)';
}


}

/// @nodoc
abstract mixin class _$LoginBodyCopyWith<$Res> implements $LoginBodyCopyWith<$Res> {
  factory _$LoginBodyCopyWith(_LoginBody value, $Res Function(_LoginBody) _then) = __$LoginBodyCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "username") String email,@JsonKey(name: "expiresInMins") String expiresInMins,@JsonKey(name: "password") String password
});




}
/// @nodoc
class __$LoginBodyCopyWithImpl<$Res>
    implements _$LoginBodyCopyWith<$Res> {
  __$LoginBodyCopyWithImpl(this._self, this._then);

  final _LoginBody _self;
  final $Res Function(_LoginBody) _then;

/// Create a copy of LoginBody
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? email = null,Object? expiresInMins = null,Object? password = null,}) {
  return _then(_LoginBody(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,expiresInMins: null == expiresInMins ? _self.expiresInMins : expiresInMins // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
