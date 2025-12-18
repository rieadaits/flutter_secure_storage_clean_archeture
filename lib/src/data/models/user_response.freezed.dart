// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserResponse {

@JsonKey(name: "id") int get id;@JsonKey(name: "firstName") String get firstName;@JsonKey(name: "lastName") String get lastName;@JsonKey(name: "maidenName") String get maidenName;@JsonKey(name: "age") int get age;@JsonKey(name: "gender") String get gender;@JsonKey(name: "email") String get email;@JsonKey(name: "phone") String get phone;@JsonKey(name: "username") String get username;@JsonKey(name: "password") String get password;@JsonKey(name: "birthDate") String get birthDate;@JsonKey(name: "image") String get image;@JsonKey(name: "bloodGroup") String get bloodGroup;@JsonKey(name: "height") double get height;@JsonKey(name: "weight") double get weight;@JsonKey(name: "eyeColor") String get eyeColor;@JsonKey(name: "hair") Hair get hair;@JsonKey(name: "ip") String get ip;@JsonKey(name: "address") Address get address;@JsonKey(name: "macAddress") String get macAddress;@JsonKey(name: "university") String get university;@JsonKey(name: "bank") Bank get bank;@JsonKey(name: "company") Company get company;@JsonKey(name: "ein") String get ein;@JsonKey(name: "ssn") String get ssn;@JsonKey(name: "userAgent") String get userAgent;@JsonKey(name: "crypto") Crypto get crypto;@JsonKey(name: "role") String get role;
/// Create a copy of UserResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserResponseCopyWith<UserResponse> get copyWith => _$UserResponseCopyWithImpl<UserResponse>(this as UserResponse, _$identity);

  /// Serializes this UserResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.maidenName, maidenName) || other.maidenName == maidenName)&&(identical(other.age, age) || other.age == age)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.email, email) || other.email == email)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.username, username) || other.username == username)&&(identical(other.password, password) || other.password == password)&&(identical(other.birthDate, birthDate) || other.birthDate == birthDate)&&(identical(other.image, image) || other.image == image)&&(identical(other.bloodGroup, bloodGroup) || other.bloodGroup == bloodGroup)&&(identical(other.height, height) || other.height == height)&&(identical(other.weight, weight) || other.weight == weight)&&(identical(other.eyeColor, eyeColor) || other.eyeColor == eyeColor)&&(identical(other.hair, hair) || other.hair == hair)&&(identical(other.ip, ip) || other.ip == ip)&&(identical(other.address, address) || other.address == address)&&(identical(other.macAddress, macAddress) || other.macAddress == macAddress)&&(identical(other.university, university) || other.university == university)&&(identical(other.bank, bank) || other.bank == bank)&&(identical(other.company, company) || other.company == company)&&(identical(other.ein, ein) || other.ein == ein)&&(identical(other.ssn, ssn) || other.ssn == ssn)&&(identical(other.userAgent, userAgent) || other.userAgent == userAgent)&&(identical(other.crypto, crypto) || other.crypto == crypto)&&(identical(other.role, role) || other.role == role));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,firstName,lastName,maidenName,age,gender,email,phone,username,password,birthDate,image,bloodGroup,height,weight,eyeColor,hair,ip,address,macAddress,university,bank,company,ein,ssn,userAgent,crypto,role]);

@override
String toString() {
  return 'UserResponse(id: $id, firstName: $firstName, lastName: $lastName, maidenName: $maidenName, age: $age, gender: $gender, email: $email, phone: $phone, username: $username, password: $password, birthDate: $birthDate, image: $image, bloodGroup: $bloodGroup, height: $height, weight: $weight, eyeColor: $eyeColor, hair: $hair, ip: $ip, address: $address, macAddress: $macAddress, university: $university, bank: $bank, company: $company, ein: $ein, ssn: $ssn, userAgent: $userAgent, crypto: $crypto, role: $role)';
}


}

/// @nodoc
abstract mixin class $UserResponseCopyWith<$Res>  {
  factory $UserResponseCopyWith(UserResponse value, $Res Function(UserResponse) _then) = _$UserResponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "id") int id,@JsonKey(name: "firstName") String firstName,@JsonKey(name: "lastName") String lastName,@JsonKey(name: "maidenName") String maidenName,@JsonKey(name: "age") int age,@JsonKey(name: "gender") String gender,@JsonKey(name: "email") String email,@JsonKey(name: "phone") String phone,@JsonKey(name: "username") String username,@JsonKey(name: "password") String password,@JsonKey(name: "birthDate") String birthDate,@JsonKey(name: "image") String image,@JsonKey(name: "bloodGroup") String bloodGroup,@JsonKey(name: "height") double height,@JsonKey(name: "weight") double weight,@JsonKey(name: "eyeColor") String eyeColor,@JsonKey(name: "hair") Hair hair,@JsonKey(name: "ip") String ip,@JsonKey(name: "address") Address address,@JsonKey(name: "macAddress") String macAddress,@JsonKey(name: "university") String university,@JsonKey(name: "bank") Bank bank,@JsonKey(name: "company") Company company,@JsonKey(name: "ein") String ein,@JsonKey(name: "ssn") String ssn,@JsonKey(name: "userAgent") String userAgent,@JsonKey(name: "crypto") Crypto crypto,@JsonKey(name: "role") String role
});


$HairCopyWith<$Res> get hair;$AddressCopyWith<$Res> get address;$BankCopyWith<$Res> get bank;$CompanyCopyWith<$Res> get company;$CryptoCopyWith<$Res> get crypto;

}
/// @nodoc
class _$UserResponseCopyWithImpl<$Res>
    implements $UserResponseCopyWith<$Res> {
  _$UserResponseCopyWithImpl(this._self, this._then);

  final UserResponse _self;
  final $Res Function(UserResponse) _then;

/// Create a copy of UserResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? firstName = null,Object? lastName = null,Object? maidenName = null,Object? age = null,Object? gender = null,Object? email = null,Object? phone = null,Object? username = null,Object? password = null,Object? birthDate = null,Object? image = null,Object? bloodGroup = null,Object? height = null,Object? weight = null,Object? eyeColor = null,Object? hair = null,Object? ip = null,Object? address = null,Object? macAddress = null,Object? university = null,Object? bank = null,Object? company = null,Object? ein = null,Object? ssn = null,Object? userAgent = null,Object? crypto = null,Object? role = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,maidenName: null == maidenName ? _self.maidenName : maidenName // ignore: cast_nullable_to_non_nullable
as String,age: null == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as int,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,birthDate: null == birthDate ? _self.birthDate : birthDate // ignore: cast_nullable_to_non_nullable
as String,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,bloodGroup: null == bloodGroup ? _self.bloodGroup : bloodGroup // ignore: cast_nullable_to_non_nullable
as String,height: null == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as double,weight: null == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as double,eyeColor: null == eyeColor ? _self.eyeColor : eyeColor // ignore: cast_nullable_to_non_nullable
as String,hair: null == hair ? _self.hair : hair // ignore: cast_nullable_to_non_nullable
as Hair,ip: null == ip ? _self.ip : ip // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as Address,macAddress: null == macAddress ? _self.macAddress : macAddress // ignore: cast_nullable_to_non_nullable
as String,university: null == university ? _self.university : university // ignore: cast_nullable_to_non_nullable
as String,bank: null == bank ? _self.bank : bank // ignore: cast_nullable_to_non_nullable
as Bank,company: null == company ? _self.company : company // ignore: cast_nullable_to_non_nullable
as Company,ein: null == ein ? _self.ein : ein // ignore: cast_nullable_to_non_nullable
as String,ssn: null == ssn ? _self.ssn : ssn // ignore: cast_nullable_to_non_nullable
as String,userAgent: null == userAgent ? _self.userAgent : userAgent // ignore: cast_nullable_to_non_nullable
as String,crypto: null == crypto ? _self.crypto : crypto // ignore: cast_nullable_to_non_nullable
as Crypto,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of UserResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HairCopyWith<$Res> get hair {
  
  return $HairCopyWith<$Res>(_self.hair, (value) {
    return _then(_self.copyWith(hair: value));
  });
}/// Create a copy of UserResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AddressCopyWith<$Res> get address {
  
  return $AddressCopyWith<$Res>(_self.address, (value) {
    return _then(_self.copyWith(address: value));
  });
}/// Create a copy of UserResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BankCopyWith<$Res> get bank {
  
  return $BankCopyWith<$Res>(_self.bank, (value) {
    return _then(_self.copyWith(bank: value));
  });
}/// Create a copy of UserResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CompanyCopyWith<$Res> get company {
  
  return $CompanyCopyWith<$Res>(_self.company, (value) {
    return _then(_self.copyWith(company: value));
  });
}/// Create a copy of UserResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CryptoCopyWith<$Res> get crypto {
  
  return $CryptoCopyWith<$Res>(_self.crypto, (value) {
    return _then(_self.copyWith(crypto: value));
  });
}
}


/// Adds pattern-matching-related methods to [UserResponse].
extension UserResponsePatterns on UserResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserResponse value)  $default,){
final _that = this;
switch (_that) {
case _UserResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserResponse value)?  $default,){
final _that = this;
switch (_that) {
case _UserResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "id")  int id, @JsonKey(name: "firstName")  String firstName, @JsonKey(name: "lastName")  String lastName, @JsonKey(name: "maidenName")  String maidenName, @JsonKey(name: "age")  int age, @JsonKey(name: "gender")  String gender, @JsonKey(name: "email")  String email, @JsonKey(name: "phone")  String phone, @JsonKey(name: "username")  String username, @JsonKey(name: "password")  String password, @JsonKey(name: "birthDate")  String birthDate, @JsonKey(name: "image")  String image, @JsonKey(name: "bloodGroup")  String bloodGroup, @JsonKey(name: "height")  double height, @JsonKey(name: "weight")  double weight, @JsonKey(name: "eyeColor")  String eyeColor, @JsonKey(name: "hair")  Hair hair, @JsonKey(name: "ip")  String ip, @JsonKey(name: "address")  Address address, @JsonKey(name: "macAddress")  String macAddress, @JsonKey(name: "university")  String university, @JsonKey(name: "bank")  Bank bank, @JsonKey(name: "company")  Company company, @JsonKey(name: "ein")  String ein, @JsonKey(name: "ssn")  String ssn, @JsonKey(name: "userAgent")  String userAgent, @JsonKey(name: "crypto")  Crypto crypto, @JsonKey(name: "role")  String role)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserResponse() when $default != null:
return $default(_that.id,_that.firstName,_that.lastName,_that.maidenName,_that.age,_that.gender,_that.email,_that.phone,_that.username,_that.password,_that.birthDate,_that.image,_that.bloodGroup,_that.height,_that.weight,_that.eyeColor,_that.hair,_that.ip,_that.address,_that.macAddress,_that.university,_that.bank,_that.company,_that.ein,_that.ssn,_that.userAgent,_that.crypto,_that.role);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "id")  int id, @JsonKey(name: "firstName")  String firstName, @JsonKey(name: "lastName")  String lastName, @JsonKey(name: "maidenName")  String maidenName, @JsonKey(name: "age")  int age, @JsonKey(name: "gender")  String gender, @JsonKey(name: "email")  String email, @JsonKey(name: "phone")  String phone, @JsonKey(name: "username")  String username, @JsonKey(name: "password")  String password, @JsonKey(name: "birthDate")  String birthDate, @JsonKey(name: "image")  String image, @JsonKey(name: "bloodGroup")  String bloodGroup, @JsonKey(name: "height")  double height, @JsonKey(name: "weight")  double weight, @JsonKey(name: "eyeColor")  String eyeColor, @JsonKey(name: "hair")  Hair hair, @JsonKey(name: "ip")  String ip, @JsonKey(name: "address")  Address address, @JsonKey(name: "macAddress")  String macAddress, @JsonKey(name: "university")  String university, @JsonKey(name: "bank")  Bank bank, @JsonKey(name: "company")  Company company, @JsonKey(name: "ein")  String ein, @JsonKey(name: "ssn")  String ssn, @JsonKey(name: "userAgent")  String userAgent, @JsonKey(name: "crypto")  Crypto crypto, @JsonKey(name: "role")  String role)  $default,) {final _that = this;
switch (_that) {
case _UserResponse():
return $default(_that.id,_that.firstName,_that.lastName,_that.maidenName,_that.age,_that.gender,_that.email,_that.phone,_that.username,_that.password,_that.birthDate,_that.image,_that.bloodGroup,_that.height,_that.weight,_that.eyeColor,_that.hair,_that.ip,_that.address,_that.macAddress,_that.university,_that.bank,_that.company,_that.ein,_that.ssn,_that.userAgent,_that.crypto,_that.role);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "id")  int id, @JsonKey(name: "firstName")  String firstName, @JsonKey(name: "lastName")  String lastName, @JsonKey(name: "maidenName")  String maidenName, @JsonKey(name: "age")  int age, @JsonKey(name: "gender")  String gender, @JsonKey(name: "email")  String email, @JsonKey(name: "phone")  String phone, @JsonKey(name: "username")  String username, @JsonKey(name: "password")  String password, @JsonKey(name: "birthDate")  String birthDate, @JsonKey(name: "image")  String image, @JsonKey(name: "bloodGroup")  String bloodGroup, @JsonKey(name: "height")  double height, @JsonKey(name: "weight")  double weight, @JsonKey(name: "eyeColor")  String eyeColor, @JsonKey(name: "hair")  Hair hair, @JsonKey(name: "ip")  String ip, @JsonKey(name: "address")  Address address, @JsonKey(name: "macAddress")  String macAddress, @JsonKey(name: "university")  String university, @JsonKey(name: "bank")  Bank bank, @JsonKey(name: "company")  Company company, @JsonKey(name: "ein")  String ein, @JsonKey(name: "ssn")  String ssn, @JsonKey(name: "userAgent")  String userAgent, @JsonKey(name: "crypto")  Crypto crypto, @JsonKey(name: "role")  String role)?  $default,) {final _that = this;
switch (_that) {
case _UserResponse() when $default != null:
return $default(_that.id,_that.firstName,_that.lastName,_that.maidenName,_that.age,_that.gender,_that.email,_that.phone,_that.username,_that.password,_that.birthDate,_that.image,_that.bloodGroup,_that.height,_that.weight,_that.eyeColor,_that.hair,_that.ip,_that.address,_that.macAddress,_that.university,_that.bank,_that.company,_that.ein,_that.ssn,_that.userAgent,_that.crypto,_that.role);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserResponse implements UserResponse {
  const _UserResponse({@JsonKey(name: "id") required this.id, @JsonKey(name: "firstName") required this.firstName, @JsonKey(name: "lastName") required this.lastName, @JsonKey(name: "maidenName") required this.maidenName, @JsonKey(name: "age") required this.age, @JsonKey(name: "gender") required this.gender, @JsonKey(name: "email") required this.email, @JsonKey(name: "phone") required this.phone, @JsonKey(name: "username") required this.username, @JsonKey(name: "password") required this.password, @JsonKey(name: "birthDate") required this.birthDate, @JsonKey(name: "image") required this.image, @JsonKey(name: "bloodGroup") required this.bloodGroup, @JsonKey(name: "height") required this.height, @JsonKey(name: "weight") required this.weight, @JsonKey(name: "eyeColor") required this.eyeColor, @JsonKey(name: "hair") required this.hair, @JsonKey(name: "ip") required this.ip, @JsonKey(name: "address") required this.address, @JsonKey(name: "macAddress") required this.macAddress, @JsonKey(name: "university") required this.university, @JsonKey(name: "bank") required this.bank, @JsonKey(name: "company") required this.company, @JsonKey(name: "ein") required this.ein, @JsonKey(name: "ssn") required this.ssn, @JsonKey(name: "userAgent") required this.userAgent, @JsonKey(name: "crypto") required this.crypto, @JsonKey(name: "role") required this.role});
  factory _UserResponse.fromJson(Map<String, dynamic> json) => _$UserResponseFromJson(json);

@override@JsonKey(name: "id") final  int id;
@override@JsonKey(name: "firstName") final  String firstName;
@override@JsonKey(name: "lastName") final  String lastName;
@override@JsonKey(name: "maidenName") final  String maidenName;
@override@JsonKey(name: "age") final  int age;
@override@JsonKey(name: "gender") final  String gender;
@override@JsonKey(name: "email") final  String email;
@override@JsonKey(name: "phone") final  String phone;
@override@JsonKey(name: "username") final  String username;
@override@JsonKey(name: "password") final  String password;
@override@JsonKey(name: "birthDate") final  String birthDate;
@override@JsonKey(name: "image") final  String image;
@override@JsonKey(name: "bloodGroup") final  String bloodGroup;
@override@JsonKey(name: "height") final  double height;
@override@JsonKey(name: "weight") final  double weight;
@override@JsonKey(name: "eyeColor") final  String eyeColor;
@override@JsonKey(name: "hair") final  Hair hair;
@override@JsonKey(name: "ip") final  String ip;
@override@JsonKey(name: "address") final  Address address;
@override@JsonKey(name: "macAddress") final  String macAddress;
@override@JsonKey(name: "university") final  String university;
@override@JsonKey(name: "bank") final  Bank bank;
@override@JsonKey(name: "company") final  Company company;
@override@JsonKey(name: "ein") final  String ein;
@override@JsonKey(name: "ssn") final  String ssn;
@override@JsonKey(name: "userAgent") final  String userAgent;
@override@JsonKey(name: "crypto") final  Crypto crypto;
@override@JsonKey(name: "role") final  String role;

/// Create a copy of UserResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserResponseCopyWith<_UserResponse> get copyWith => __$UserResponseCopyWithImpl<_UserResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.maidenName, maidenName) || other.maidenName == maidenName)&&(identical(other.age, age) || other.age == age)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.email, email) || other.email == email)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.username, username) || other.username == username)&&(identical(other.password, password) || other.password == password)&&(identical(other.birthDate, birthDate) || other.birthDate == birthDate)&&(identical(other.image, image) || other.image == image)&&(identical(other.bloodGroup, bloodGroup) || other.bloodGroup == bloodGroup)&&(identical(other.height, height) || other.height == height)&&(identical(other.weight, weight) || other.weight == weight)&&(identical(other.eyeColor, eyeColor) || other.eyeColor == eyeColor)&&(identical(other.hair, hair) || other.hair == hair)&&(identical(other.ip, ip) || other.ip == ip)&&(identical(other.address, address) || other.address == address)&&(identical(other.macAddress, macAddress) || other.macAddress == macAddress)&&(identical(other.university, university) || other.university == university)&&(identical(other.bank, bank) || other.bank == bank)&&(identical(other.company, company) || other.company == company)&&(identical(other.ein, ein) || other.ein == ein)&&(identical(other.ssn, ssn) || other.ssn == ssn)&&(identical(other.userAgent, userAgent) || other.userAgent == userAgent)&&(identical(other.crypto, crypto) || other.crypto == crypto)&&(identical(other.role, role) || other.role == role));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,firstName,lastName,maidenName,age,gender,email,phone,username,password,birthDate,image,bloodGroup,height,weight,eyeColor,hair,ip,address,macAddress,university,bank,company,ein,ssn,userAgent,crypto,role]);

@override
String toString() {
  return 'UserResponse(id: $id, firstName: $firstName, lastName: $lastName, maidenName: $maidenName, age: $age, gender: $gender, email: $email, phone: $phone, username: $username, password: $password, birthDate: $birthDate, image: $image, bloodGroup: $bloodGroup, height: $height, weight: $weight, eyeColor: $eyeColor, hair: $hair, ip: $ip, address: $address, macAddress: $macAddress, university: $university, bank: $bank, company: $company, ein: $ein, ssn: $ssn, userAgent: $userAgent, crypto: $crypto, role: $role)';
}


}

/// @nodoc
abstract mixin class _$UserResponseCopyWith<$Res> implements $UserResponseCopyWith<$Res> {
  factory _$UserResponseCopyWith(_UserResponse value, $Res Function(_UserResponse) _then) = __$UserResponseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "id") int id,@JsonKey(name: "firstName") String firstName,@JsonKey(name: "lastName") String lastName,@JsonKey(name: "maidenName") String maidenName,@JsonKey(name: "age") int age,@JsonKey(name: "gender") String gender,@JsonKey(name: "email") String email,@JsonKey(name: "phone") String phone,@JsonKey(name: "username") String username,@JsonKey(name: "password") String password,@JsonKey(name: "birthDate") String birthDate,@JsonKey(name: "image") String image,@JsonKey(name: "bloodGroup") String bloodGroup,@JsonKey(name: "height") double height,@JsonKey(name: "weight") double weight,@JsonKey(name: "eyeColor") String eyeColor,@JsonKey(name: "hair") Hair hair,@JsonKey(name: "ip") String ip,@JsonKey(name: "address") Address address,@JsonKey(name: "macAddress") String macAddress,@JsonKey(name: "university") String university,@JsonKey(name: "bank") Bank bank,@JsonKey(name: "company") Company company,@JsonKey(name: "ein") String ein,@JsonKey(name: "ssn") String ssn,@JsonKey(name: "userAgent") String userAgent,@JsonKey(name: "crypto") Crypto crypto,@JsonKey(name: "role") String role
});


@override $HairCopyWith<$Res> get hair;@override $AddressCopyWith<$Res> get address;@override $BankCopyWith<$Res> get bank;@override $CompanyCopyWith<$Res> get company;@override $CryptoCopyWith<$Res> get crypto;

}
/// @nodoc
class __$UserResponseCopyWithImpl<$Res>
    implements _$UserResponseCopyWith<$Res> {
  __$UserResponseCopyWithImpl(this._self, this._then);

  final _UserResponse _self;
  final $Res Function(_UserResponse) _then;

/// Create a copy of UserResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? firstName = null,Object? lastName = null,Object? maidenName = null,Object? age = null,Object? gender = null,Object? email = null,Object? phone = null,Object? username = null,Object? password = null,Object? birthDate = null,Object? image = null,Object? bloodGroup = null,Object? height = null,Object? weight = null,Object? eyeColor = null,Object? hair = null,Object? ip = null,Object? address = null,Object? macAddress = null,Object? university = null,Object? bank = null,Object? company = null,Object? ein = null,Object? ssn = null,Object? userAgent = null,Object? crypto = null,Object? role = null,}) {
  return _then(_UserResponse(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,maidenName: null == maidenName ? _self.maidenName : maidenName // ignore: cast_nullable_to_non_nullable
as String,age: null == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as int,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,birthDate: null == birthDate ? _self.birthDate : birthDate // ignore: cast_nullable_to_non_nullable
as String,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,bloodGroup: null == bloodGroup ? _self.bloodGroup : bloodGroup // ignore: cast_nullable_to_non_nullable
as String,height: null == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as double,weight: null == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as double,eyeColor: null == eyeColor ? _self.eyeColor : eyeColor // ignore: cast_nullable_to_non_nullable
as String,hair: null == hair ? _self.hair : hair // ignore: cast_nullable_to_non_nullable
as Hair,ip: null == ip ? _self.ip : ip // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as Address,macAddress: null == macAddress ? _self.macAddress : macAddress // ignore: cast_nullable_to_non_nullable
as String,university: null == university ? _self.university : university // ignore: cast_nullable_to_non_nullable
as String,bank: null == bank ? _self.bank : bank // ignore: cast_nullable_to_non_nullable
as Bank,company: null == company ? _self.company : company // ignore: cast_nullable_to_non_nullable
as Company,ein: null == ein ? _self.ein : ein // ignore: cast_nullable_to_non_nullable
as String,ssn: null == ssn ? _self.ssn : ssn // ignore: cast_nullable_to_non_nullable
as String,userAgent: null == userAgent ? _self.userAgent : userAgent // ignore: cast_nullable_to_non_nullable
as String,crypto: null == crypto ? _self.crypto : crypto // ignore: cast_nullable_to_non_nullable
as Crypto,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of UserResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HairCopyWith<$Res> get hair {
  
  return $HairCopyWith<$Res>(_self.hair, (value) {
    return _then(_self.copyWith(hair: value));
  });
}/// Create a copy of UserResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AddressCopyWith<$Res> get address {
  
  return $AddressCopyWith<$Res>(_self.address, (value) {
    return _then(_self.copyWith(address: value));
  });
}/// Create a copy of UserResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BankCopyWith<$Res> get bank {
  
  return $BankCopyWith<$Res>(_self.bank, (value) {
    return _then(_self.copyWith(bank: value));
  });
}/// Create a copy of UserResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CompanyCopyWith<$Res> get company {
  
  return $CompanyCopyWith<$Res>(_self.company, (value) {
    return _then(_self.copyWith(company: value));
  });
}/// Create a copy of UserResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CryptoCopyWith<$Res> get crypto {
  
  return $CryptoCopyWith<$Res>(_self.crypto, (value) {
    return _then(_self.copyWith(crypto: value));
  });
}
}


/// @nodoc
mixin _$Address {

@JsonKey(name: "address") String get address;@JsonKey(name: "city") String get city;@JsonKey(name: "state") String get state;@JsonKey(name: "stateCode") String get stateCode;@JsonKey(name: "postalCode") String get postalCode;@JsonKey(name: "coordinates") Coordinates get coordinates;@JsonKey(name: "country") String get country;
/// Create a copy of Address
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddressCopyWith<Address> get copyWith => _$AddressCopyWithImpl<Address>(this as Address, _$identity);

  /// Serializes this Address to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Address&&(identical(other.address, address) || other.address == address)&&(identical(other.city, city) || other.city == city)&&(identical(other.state, state) || other.state == state)&&(identical(other.stateCode, stateCode) || other.stateCode == stateCode)&&(identical(other.postalCode, postalCode) || other.postalCode == postalCode)&&(identical(other.coordinates, coordinates) || other.coordinates == coordinates)&&(identical(other.country, country) || other.country == country));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,address,city,state,stateCode,postalCode,coordinates,country);

@override
String toString() {
  return 'Address(address: $address, city: $city, state: $state, stateCode: $stateCode, postalCode: $postalCode, coordinates: $coordinates, country: $country)';
}


}

/// @nodoc
abstract mixin class $AddressCopyWith<$Res>  {
  factory $AddressCopyWith(Address value, $Res Function(Address) _then) = _$AddressCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "address") String address,@JsonKey(name: "city") String city,@JsonKey(name: "state") String state,@JsonKey(name: "stateCode") String stateCode,@JsonKey(name: "postalCode") String postalCode,@JsonKey(name: "coordinates") Coordinates coordinates,@JsonKey(name: "country") String country
});


$CoordinatesCopyWith<$Res> get coordinates;

}
/// @nodoc
class _$AddressCopyWithImpl<$Res>
    implements $AddressCopyWith<$Res> {
  _$AddressCopyWithImpl(this._self, this._then);

  final Address _self;
  final $Res Function(Address) _then;

/// Create a copy of Address
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? address = null,Object? city = null,Object? state = null,Object? stateCode = null,Object? postalCode = null,Object? coordinates = null,Object? country = null,}) {
  return _then(_self.copyWith(
address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,city: null == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String,state: null == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as String,stateCode: null == stateCode ? _self.stateCode : stateCode // ignore: cast_nullable_to_non_nullable
as String,postalCode: null == postalCode ? _self.postalCode : postalCode // ignore: cast_nullable_to_non_nullable
as String,coordinates: null == coordinates ? _self.coordinates : coordinates // ignore: cast_nullable_to_non_nullable
as Coordinates,country: null == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of Address
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CoordinatesCopyWith<$Res> get coordinates {
  
  return $CoordinatesCopyWith<$Res>(_self.coordinates, (value) {
    return _then(_self.copyWith(coordinates: value));
  });
}
}


/// Adds pattern-matching-related methods to [Address].
extension AddressPatterns on Address {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Address value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Address() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Address value)  $default,){
final _that = this;
switch (_that) {
case _Address():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Address value)?  $default,){
final _that = this;
switch (_that) {
case _Address() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "address")  String address, @JsonKey(name: "city")  String city, @JsonKey(name: "state")  String state, @JsonKey(name: "stateCode")  String stateCode, @JsonKey(name: "postalCode")  String postalCode, @JsonKey(name: "coordinates")  Coordinates coordinates, @JsonKey(name: "country")  String country)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Address() when $default != null:
return $default(_that.address,_that.city,_that.state,_that.stateCode,_that.postalCode,_that.coordinates,_that.country);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "address")  String address, @JsonKey(name: "city")  String city, @JsonKey(name: "state")  String state, @JsonKey(name: "stateCode")  String stateCode, @JsonKey(name: "postalCode")  String postalCode, @JsonKey(name: "coordinates")  Coordinates coordinates, @JsonKey(name: "country")  String country)  $default,) {final _that = this;
switch (_that) {
case _Address():
return $default(_that.address,_that.city,_that.state,_that.stateCode,_that.postalCode,_that.coordinates,_that.country);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "address")  String address, @JsonKey(name: "city")  String city, @JsonKey(name: "state")  String state, @JsonKey(name: "stateCode")  String stateCode, @JsonKey(name: "postalCode")  String postalCode, @JsonKey(name: "coordinates")  Coordinates coordinates, @JsonKey(name: "country")  String country)?  $default,) {final _that = this;
switch (_that) {
case _Address() when $default != null:
return $default(_that.address,_that.city,_that.state,_that.stateCode,_that.postalCode,_that.coordinates,_that.country);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Address implements Address {
  const _Address({@JsonKey(name: "address") required this.address, @JsonKey(name: "city") required this.city, @JsonKey(name: "state") required this.state, @JsonKey(name: "stateCode") required this.stateCode, @JsonKey(name: "postalCode") required this.postalCode, @JsonKey(name: "coordinates") required this.coordinates, @JsonKey(name: "country") required this.country});
  factory _Address.fromJson(Map<String, dynamic> json) => _$AddressFromJson(json);

@override@JsonKey(name: "address") final  String address;
@override@JsonKey(name: "city") final  String city;
@override@JsonKey(name: "state") final  String state;
@override@JsonKey(name: "stateCode") final  String stateCode;
@override@JsonKey(name: "postalCode") final  String postalCode;
@override@JsonKey(name: "coordinates") final  Coordinates coordinates;
@override@JsonKey(name: "country") final  String country;

/// Create a copy of Address
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddressCopyWith<_Address> get copyWith => __$AddressCopyWithImpl<_Address>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AddressToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Address&&(identical(other.address, address) || other.address == address)&&(identical(other.city, city) || other.city == city)&&(identical(other.state, state) || other.state == state)&&(identical(other.stateCode, stateCode) || other.stateCode == stateCode)&&(identical(other.postalCode, postalCode) || other.postalCode == postalCode)&&(identical(other.coordinates, coordinates) || other.coordinates == coordinates)&&(identical(other.country, country) || other.country == country));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,address,city,state,stateCode,postalCode,coordinates,country);

@override
String toString() {
  return 'Address(address: $address, city: $city, state: $state, stateCode: $stateCode, postalCode: $postalCode, coordinates: $coordinates, country: $country)';
}


}

/// @nodoc
abstract mixin class _$AddressCopyWith<$Res> implements $AddressCopyWith<$Res> {
  factory _$AddressCopyWith(_Address value, $Res Function(_Address) _then) = __$AddressCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "address") String address,@JsonKey(name: "city") String city,@JsonKey(name: "state") String state,@JsonKey(name: "stateCode") String stateCode,@JsonKey(name: "postalCode") String postalCode,@JsonKey(name: "coordinates") Coordinates coordinates,@JsonKey(name: "country") String country
});


@override $CoordinatesCopyWith<$Res> get coordinates;

}
/// @nodoc
class __$AddressCopyWithImpl<$Res>
    implements _$AddressCopyWith<$Res> {
  __$AddressCopyWithImpl(this._self, this._then);

  final _Address _self;
  final $Res Function(_Address) _then;

/// Create a copy of Address
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? address = null,Object? city = null,Object? state = null,Object? stateCode = null,Object? postalCode = null,Object? coordinates = null,Object? country = null,}) {
  return _then(_Address(
address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,city: null == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String,state: null == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as String,stateCode: null == stateCode ? _self.stateCode : stateCode // ignore: cast_nullable_to_non_nullable
as String,postalCode: null == postalCode ? _self.postalCode : postalCode // ignore: cast_nullable_to_non_nullable
as String,coordinates: null == coordinates ? _self.coordinates : coordinates // ignore: cast_nullable_to_non_nullable
as Coordinates,country: null == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of Address
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CoordinatesCopyWith<$Res> get coordinates {
  
  return $CoordinatesCopyWith<$Res>(_self.coordinates, (value) {
    return _then(_self.copyWith(coordinates: value));
  });
}
}


/// @nodoc
mixin _$Coordinates {

@JsonKey(name: "lat") double get lat;@JsonKey(name: "lng") double get lng;
/// Create a copy of Coordinates
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CoordinatesCopyWith<Coordinates> get copyWith => _$CoordinatesCopyWithImpl<Coordinates>(this as Coordinates, _$identity);

  /// Serializes this Coordinates to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Coordinates&&(identical(other.lat, lat) || other.lat == lat)&&(identical(other.lng, lng) || other.lng == lng));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,lat,lng);

@override
String toString() {
  return 'Coordinates(lat: $lat, lng: $lng)';
}


}

/// @nodoc
abstract mixin class $CoordinatesCopyWith<$Res>  {
  factory $CoordinatesCopyWith(Coordinates value, $Res Function(Coordinates) _then) = _$CoordinatesCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "lat") double lat,@JsonKey(name: "lng") double lng
});




}
/// @nodoc
class _$CoordinatesCopyWithImpl<$Res>
    implements $CoordinatesCopyWith<$Res> {
  _$CoordinatesCopyWithImpl(this._self, this._then);

  final Coordinates _self;
  final $Res Function(Coordinates) _then;

/// Create a copy of Coordinates
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? lat = null,Object? lng = null,}) {
  return _then(_self.copyWith(
lat: null == lat ? _self.lat : lat // ignore: cast_nullable_to_non_nullable
as double,lng: null == lng ? _self.lng : lng // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [Coordinates].
extension CoordinatesPatterns on Coordinates {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Coordinates value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Coordinates() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Coordinates value)  $default,){
final _that = this;
switch (_that) {
case _Coordinates():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Coordinates value)?  $default,){
final _that = this;
switch (_that) {
case _Coordinates() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "lat")  double lat, @JsonKey(name: "lng")  double lng)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Coordinates() when $default != null:
return $default(_that.lat,_that.lng);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "lat")  double lat, @JsonKey(name: "lng")  double lng)  $default,) {final _that = this;
switch (_that) {
case _Coordinates():
return $default(_that.lat,_that.lng);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "lat")  double lat, @JsonKey(name: "lng")  double lng)?  $default,) {final _that = this;
switch (_that) {
case _Coordinates() when $default != null:
return $default(_that.lat,_that.lng);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Coordinates implements Coordinates {
  const _Coordinates({@JsonKey(name: "lat") required this.lat, @JsonKey(name: "lng") required this.lng});
  factory _Coordinates.fromJson(Map<String, dynamic> json) => _$CoordinatesFromJson(json);

@override@JsonKey(name: "lat") final  double lat;
@override@JsonKey(name: "lng") final  double lng;

/// Create a copy of Coordinates
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CoordinatesCopyWith<_Coordinates> get copyWith => __$CoordinatesCopyWithImpl<_Coordinates>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CoordinatesToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Coordinates&&(identical(other.lat, lat) || other.lat == lat)&&(identical(other.lng, lng) || other.lng == lng));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,lat,lng);

@override
String toString() {
  return 'Coordinates(lat: $lat, lng: $lng)';
}


}

/// @nodoc
abstract mixin class _$CoordinatesCopyWith<$Res> implements $CoordinatesCopyWith<$Res> {
  factory _$CoordinatesCopyWith(_Coordinates value, $Res Function(_Coordinates) _then) = __$CoordinatesCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "lat") double lat,@JsonKey(name: "lng") double lng
});




}
/// @nodoc
class __$CoordinatesCopyWithImpl<$Res>
    implements _$CoordinatesCopyWith<$Res> {
  __$CoordinatesCopyWithImpl(this._self, this._then);

  final _Coordinates _self;
  final $Res Function(_Coordinates) _then;

/// Create a copy of Coordinates
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? lat = null,Object? lng = null,}) {
  return _then(_Coordinates(
lat: null == lat ? _self.lat : lat // ignore: cast_nullable_to_non_nullable
as double,lng: null == lng ? _self.lng : lng // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}


/// @nodoc
mixin _$Bank {

@JsonKey(name: "cardExpire") String get cardExpire;@JsonKey(name: "cardNumber") String get cardNumber;@JsonKey(name: "cardType") String get cardType;@JsonKey(name: "currency") String get currency;@JsonKey(name: "iban") String get iban;
/// Create a copy of Bank
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BankCopyWith<Bank> get copyWith => _$BankCopyWithImpl<Bank>(this as Bank, _$identity);

  /// Serializes this Bank to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Bank&&(identical(other.cardExpire, cardExpire) || other.cardExpire == cardExpire)&&(identical(other.cardNumber, cardNumber) || other.cardNumber == cardNumber)&&(identical(other.cardType, cardType) || other.cardType == cardType)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.iban, iban) || other.iban == iban));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,cardExpire,cardNumber,cardType,currency,iban);

@override
String toString() {
  return 'Bank(cardExpire: $cardExpire, cardNumber: $cardNumber, cardType: $cardType, currency: $currency, iban: $iban)';
}


}

/// @nodoc
abstract mixin class $BankCopyWith<$Res>  {
  factory $BankCopyWith(Bank value, $Res Function(Bank) _then) = _$BankCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "cardExpire") String cardExpire,@JsonKey(name: "cardNumber") String cardNumber,@JsonKey(name: "cardType") String cardType,@JsonKey(name: "currency") String currency,@JsonKey(name: "iban") String iban
});




}
/// @nodoc
class _$BankCopyWithImpl<$Res>
    implements $BankCopyWith<$Res> {
  _$BankCopyWithImpl(this._self, this._then);

  final Bank _self;
  final $Res Function(Bank) _then;

/// Create a copy of Bank
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? cardExpire = null,Object? cardNumber = null,Object? cardType = null,Object? currency = null,Object? iban = null,}) {
  return _then(_self.copyWith(
cardExpire: null == cardExpire ? _self.cardExpire : cardExpire // ignore: cast_nullable_to_non_nullable
as String,cardNumber: null == cardNumber ? _self.cardNumber : cardNumber // ignore: cast_nullable_to_non_nullable
as String,cardType: null == cardType ? _self.cardType : cardType // ignore: cast_nullable_to_non_nullable
as String,currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String,iban: null == iban ? _self.iban : iban // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [Bank].
extension BankPatterns on Bank {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Bank value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Bank() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Bank value)  $default,){
final _that = this;
switch (_that) {
case _Bank():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Bank value)?  $default,){
final _that = this;
switch (_that) {
case _Bank() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "cardExpire")  String cardExpire, @JsonKey(name: "cardNumber")  String cardNumber, @JsonKey(name: "cardType")  String cardType, @JsonKey(name: "currency")  String currency, @JsonKey(name: "iban")  String iban)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Bank() when $default != null:
return $default(_that.cardExpire,_that.cardNumber,_that.cardType,_that.currency,_that.iban);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "cardExpire")  String cardExpire, @JsonKey(name: "cardNumber")  String cardNumber, @JsonKey(name: "cardType")  String cardType, @JsonKey(name: "currency")  String currency, @JsonKey(name: "iban")  String iban)  $default,) {final _that = this;
switch (_that) {
case _Bank():
return $default(_that.cardExpire,_that.cardNumber,_that.cardType,_that.currency,_that.iban);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "cardExpire")  String cardExpire, @JsonKey(name: "cardNumber")  String cardNumber, @JsonKey(name: "cardType")  String cardType, @JsonKey(name: "currency")  String currency, @JsonKey(name: "iban")  String iban)?  $default,) {final _that = this;
switch (_that) {
case _Bank() when $default != null:
return $default(_that.cardExpire,_that.cardNumber,_that.cardType,_that.currency,_that.iban);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Bank implements Bank {
  const _Bank({@JsonKey(name: "cardExpire") required this.cardExpire, @JsonKey(name: "cardNumber") required this.cardNumber, @JsonKey(name: "cardType") required this.cardType, @JsonKey(name: "currency") required this.currency, @JsonKey(name: "iban") required this.iban});
  factory _Bank.fromJson(Map<String, dynamic> json) => _$BankFromJson(json);

@override@JsonKey(name: "cardExpire") final  String cardExpire;
@override@JsonKey(name: "cardNumber") final  String cardNumber;
@override@JsonKey(name: "cardType") final  String cardType;
@override@JsonKey(name: "currency") final  String currency;
@override@JsonKey(name: "iban") final  String iban;

/// Create a copy of Bank
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BankCopyWith<_Bank> get copyWith => __$BankCopyWithImpl<_Bank>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BankToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Bank&&(identical(other.cardExpire, cardExpire) || other.cardExpire == cardExpire)&&(identical(other.cardNumber, cardNumber) || other.cardNumber == cardNumber)&&(identical(other.cardType, cardType) || other.cardType == cardType)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.iban, iban) || other.iban == iban));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,cardExpire,cardNumber,cardType,currency,iban);

@override
String toString() {
  return 'Bank(cardExpire: $cardExpire, cardNumber: $cardNumber, cardType: $cardType, currency: $currency, iban: $iban)';
}


}

/// @nodoc
abstract mixin class _$BankCopyWith<$Res> implements $BankCopyWith<$Res> {
  factory _$BankCopyWith(_Bank value, $Res Function(_Bank) _then) = __$BankCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "cardExpire") String cardExpire,@JsonKey(name: "cardNumber") String cardNumber,@JsonKey(name: "cardType") String cardType,@JsonKey(name: "currency") String currency,@JsonKey(name: "iban") String iban
});




}
/// @nodoc
class __$BankCopyWithImpl<$Res>
    implements _$BankCopyWith<$Res> {
  __$BankCopyWithImpl(this._self, this._then);

  final _Bank _self;
  final $Res Function(_Bank) _then;

/// Create a copy of Bank
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? cardExpire = null,Object? cardNumber = null,Object? cardType = null,Object? currency = null,Object? iban = null,}) {
  return _then(_Bank(
cardExpire: null == cardExpire ? _self.cardExpire : cardExpire // ignore: cast_nullable_to_non_nullable
as String,cardNumber: null == cardNumber ? _self.cardNumber : cardNumber // ignore: cast_nullable_to_non_nullable
as String,cardType: null == cardType ? _self.cardType : cardType // ignore: cast_nullable_to_non_nullable
as String,currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String,iban: null == iban ? _self.iban : iban // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$Company {

@JsonKey(name: "department") String get department;@JsonKey(name: "name") String get name;@JsonKey(name: "title") String get title;@JsonKey(name: "address") Address get address;
/// Create a copy of Company
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CompanyCopyWith<Company> get copyWith => _$CompanyCopyWithImpl<Company>(this as Company, _$identity);

  /// Serializes this Company to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Company&&(identical(other.department, department) || other.department == department)&&(identical(other.name, name) || other.name == name)&&(identical(other.title, title) || other.title == title)&&(identical(other.address, address) || other.address == address));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,department,name,title,address);

@override
String toString() {
  return 'Company(department: $department, name: $name, title: $title, address: $address)';
}


}

/// @nodoc
abstract mixin class $CompanyCopyWith<$Res>  {
  factory $CompanyCopyWith(Company value, $Res Function(Company) _then) = _$CompanyCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "department") String department,@JsonKey(name: "name") String name,@JsonKey(name: "title") String title,@JsonKey(name: "address") Address address
});


$AddressCopyWith<$Res> get address;

}
/// @nodoc
class _$CompanyCopyWithImpl<$Res>
    implements $CompanyCopyWith<$Res> {
  _$CompanyCopyWithImpl(this._self, this._then);

  final Company _self;
  final $Res Function(Company) _then;

/// Create a copy of Company
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? department = null,Object? name = null,Object? title = null,Object? address = null,}) {
  return _then(_self.copyWith(
department: null == department ? _self.department : department // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as Address,
  ));
}
/// Create a copy of Company
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AddressCopyWith<$Res> get address {
  
  return $AddressCopyWith<$Res>(_self.address, (value) {
    return _then(_self.copyWith(address: value));
  });
}
}


/// Adds pattern-matching-related methods to [Company].
extension CompanyPatterns on Company {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Company value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Company() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Company value)  $default,){
final _that = this;
switch (_that) {
case _Company():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Company value)?  $default,){
final _that = this;
switch (_that) {
case _Company() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "department")  String department, @JsonKey(name: "name")  String name, @JsonKey(name: "title")  String title, @JsonKey(name: "address")  Address address)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Company() when $default != null:
return $default(_that.department,_that.name,_that.title,_that.address);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "department")  String department, @JsonKey(name: "name")  String name, @JsonKey(name: "title")  String title, @JsonKey(name: "address")  Address address)  $default,) {final _that = this;
switch (_that) {
case _Company():
return $default(_that.department,_that.name,_that.title,_that.address);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "department")  String department, @JsonKey(name: "name")  String name, @JsonKey(name: "title")  String title, @JsonKey(name: "address")  Address address)?  $default,) {final _that = this;
switch (_that) {
case _Company() when $default != null:
return $default(_that.department,_that.name,_that.title,_that.address);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Company implements Company {
  const _Company({@JsonKey(name: "department") required this.department, @JsonKey(name: "name") required this.name, @JsonKey(name: "title") required this.title, @JsonKey(name: "address") required this.address});
  factory _Company.fromJson(Map<String, dynamic> json) => _$CompanyFromJson(json);

@override@JsonKey(name: "department") final  String department;
@override@JsonKey(name: "name") final  String name;
@override@JsonKey(name: "title") final  String title;
@override@JsonKey(name: "address") final  Address address;

/// Create a copy of Company
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CompanyCopyWith<_Company> get copyWith => __$CompanyCopyWithImpl<_Company>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CompanyToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Company&&(identical(other.department, department) || other.department == department)&&(identical(other.name, name) || other.name == name)&&(identical(other.title, title) || other.title == title)&&(identical(other.address, address) || other.address == address));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,department,name,title,address);

@override
String toString() {
  return 'Company(department: $department, name: $name, title: $title, address: $address)';
}


}

/// @nodoc
abstract mixin class _$CompanyCopyWith<$Res> implements $CompanyCopyWith<$Res> {
  factory _$CompanyCopyWith(_Company value, $Res Function(_Company) _then) = __$CompanyCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "department") String department,@JsonKey(name: "name") String name,@JsonKey(name: "title") String title,@JsonKey(name: "address") Address address
});


@override $AddressCopyWith<$Res> get address;

}
/// @nodoc
class __$CompanyCopyWithImpl<$Res>
    implements _$CompanyCopyWith<$Res> {
  __$CompanyCopyWithImpl(this._self, this._then);

  final _Company _self;
  final $Res Function(_Company) _then;

/// Create a copy of Company
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? department = null,Object? name = null,Object? title = null,Object? address = null,}) {
  return _then(_Company(
department: null == department ? _self.department : department // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as Address,
  ));
}

/// Create a copy of Company
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AddressCopyWith<$Res> get address {
  
  return $AddressCopyWith<$Res>(_self.address, (value) {
    return _then(_self.copyWith(address: value));
  });
}
}


/// @nodoc
mixin _$Crypto {

@JsonKey(name: "coin") String get coin;@JsonKey(name: "wallet") String get wallet;@JsonKey(name: "network") String get network;
/// Create a copy of Crypto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CryptoCopyWith<Crypto> get copyWith => _$CryptoCopyWithImpl<Crypto>(this as Crypto, _$identity);

  /// Serializes this Crypto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Crypto&&(identical(other.coin, coin) || other.coin == coin)&&(identical(other.wallet, wallet) || other.wallet == wallet)&&(identical(other.network, network) || other.network == network));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,coin,wallet,network);

@override
String toString() {
  return 'Crypto(coin: $coin, wallet: $wallet, network: $network)';
}


}

/// @nodoc
abstract mixin class $CryptoCopyWith<$Res>  {
  factory $CryptoCopyWith(Crypto value, $Res Function(Crypto) _then) = _$CryptoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "coin") String coin,@JsonKey(name: "wallet") String wallet,@JsonKey(name: "network") String network
});




}
/// @nodoc
class _$CryptoCopyWithImpl<$Res>
    implements $CryptoCopyWith<$Res> {
  _$CryptoCopyWithImpl(this._self, this._then);

  final Crypto _self;
  final $Res Function(Crypto) _then;

/// Create a copy of Crypto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? coin = null,Object? wallet = null,Object? network = null,}) {
  return _then(_self.copyWith(
coin: null == coin ? _self.coin : coin // ignore: cast_nullable_to_non_nullable
as String,wallet: null == wallet ? _self.wallet : wallet // ignore: cast_nullable_to_non_nullable
as String,network: null == network ? _self.network : network // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [Crypto].
extension CryptoPatterns on Crypto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Crypto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Crypto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Crypto value)  $default,){
final _that = this;
switch (_that) {
case _Crypto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Crypto value)?  $default,){
final _that = this;
switch (_that) {
case _Crypto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "coin")  String coin, @JsonKey(name: "wallet")  String wallet, @JsonKey(name: "network")  String network)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Crypto() when $default != null:
return $default(_that.coin,_that.wallet,_that.network);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "coin")  String coin, @JsonKey(name: "wallet")  String wallet, @JsonKey(name: "network")  String network)  $default,) {final _that = this;
switch (_that) {
case _Crypto():
return $default(_that.coin,_that.wallet,_that.network);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "coin")  String coin, @JsonKey(name: "wallet")  String wallet, @JsonKey(name: "network")  String network)?  $default,) {final _that = this;
switch (_that) {
case _Crypto() when $default != null:
return $default(_that.coin,_that.wallet,_that.network);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Crypto implements Crypto {
  const _Crypto({@JsonKey(name: "coin") required this.coin, @JsonKey(name: "wallet") required this.wallet, @JsonKey(name: "network") required this.network});
  factory _Crypto.fromJson(Map<String, dynamic> json) => _$CryptoFromJson(json);

@override@JsonKey(name: "coin") final  String coin;
@override@JsonKey(name: "wallet") final  String wallet;
@override@JsonKey(name: "network") final  String network;

/// Create a copy of Crypto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CryptoCopyWith<_Crypto> get copyWith => __$CryptoCopyWithImpl<_Crypto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CryptoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Crypto&&(identical(other.coin, coin) || other.coin == coin)&&(identical(other.wallet, wallet) || other.wallet == wallet)&&(identical(other.network, network) || other.network == network));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,coin,wallet,network);

@override
String toString() {
  return 'Crypto(coin: $coin, wallet: $wallet, network: $network)';
}


}

/// @nodoc
abstract mixin class _$CryptoCopyWith<$Res> implements $CryptoCopyWith<$Res> {
  factory _$CryptoCopyWith(_Crypto value, $Res Function(_Crypto) _then) = __$CryptoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "coin") String coin,@JsonKey(name: "wallet") String wallet,@JsonKey(name: "network") String network
});




}
/// @nodoc
class __$CryptoCopyWithImpl<$Res>
    implements _$CryptoCopyWith<$Res> {
  __$CryptoCopyWithImpl(this._self, this._then);

  final _Crypto _self;
  final $Res Function(_Crypto) _then;

/// Create a copy of Crypto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? coin = null,Object? wallet = null,Object? network = null,}) {
  return _then(_Crypto(
coin: null == coin ? _self.coin : coin // ignore: cast_nullable_to_non_nullable
as String,wallet: null == wallet ? _self.wallet : wallet // ignore: cast_nullable_to_non_nullable
as String,network: null == network ? _self.network : network // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$Hair {

@JsonKey(name: "color") String get color;@JsonKey(name: "type") String get type;
/// Create a copy of Hair
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HairCopyWith<Hair> get copyWith => _$HairCopyWithImpl<Hair>(this as Hair, _$identity);

  /// Serializes this Hair to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Hair&&(identical(other.color, color) || other.color == color)&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,color,type);

@override
String toString() {
  return 'Hair(color: $color, type: $type)';
}


}

/// @nodoc
abstract mixin class $HairCopyWith<$Res>  {
  factory $HairCopyWith(Hair value, $Res Function(Hair) _then) = _$HairCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "color") String color,@JsonKey(name: "type") String type
});




}
/// @nodoc
class _$HairCopyWithImpl<$Res>
    implements $HairCopyWith<$Res> {
  _$HairCopyWithImpl(this._self, this._then);

  final Hair _self;
  final $Res Function(Hair) _then;

/// Create a copy of Hair
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? color = null,Object? type = null,}) {
  return _then(_self.copyWith(
color: null == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [Hair].
extension HairPatterns on Hair {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Hair value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Hair() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Hair value)  $default,){
final _that = this;
switch (_that) {
case _Hair():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Hair value)?  $default,){
final _that = this;
switch (_that) {
case _Hair() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "color")  String color, @JsonKey(name: "type")  String type)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Hair() when $default != null:
return $default(_that.color,_that.type);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "color")  String color, @JsonKey(name: "type")  String type)  $default,) {final _that = this;
switch (_that) {
case _Hair():
return $default(_that.color,_that.type);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "color")  String color, @JsonKey(name: "type")  String type)?  $default,) {final _that = this;
switch (_that) {
case _Hair() when $default != null:
return $default(_that.color,_that.type);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Hair implements Hair {
  const _Hair({@JsonKey(name: "color") required this.color, @JsonKey(name: "type") required this.type});
  factory _Hair.fromJson(Map<String, dynamic> json) => _$HairFromJson(json);

@override@JsonKey(name: "color") final  String color;
@override@JsonKey(name: "type") final  String type;

/// Create a copy of Hair
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HairCopyWith<_Hair> get copyWith => __$HairCopyWithImpl<_Hair>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HairToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Hair&&(identical(other.color, color) || other.color == color)&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,color,type);

@override
String toString() {
  return 'Hair(color: $color, type: $type)';
}


}

/// @nodoc
abstract mixin class _$HairCopyWith<$Res> implements $HairCopyWith<$Res> {
  factory _$HairCopyWith(_Hair value, $Res Function(_Hair) _then) = __$HairCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "color") String color,@JsonKey(name: "type") String type
});




}
/// @nodoc
class __$HairCopyWithImpl<$Res>
    implements _$HairCopyWith<$Res> {
  __$HairCopyWithImpl(this._self, this._then);

  final _Hair _self;
  final $Res Function(_Hair) _then;

/// Create a copy of Hair
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? color = null,Object? type = null,}) {
  return _then(_Hair(
color: null == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
