// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'login_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
LoginResponse _$LoginResponseFromJson(Map<String, dynamic> json) {
  return _LoginResponse.fromJson(json);
}

/// @nodoc
class _$LoginResponseTearOff {
  const _$LoginResponseTearOff();

// ignore: unused_element
  _LoginResponse call({bool ok, User user, String token, String message}) {
    return _LoginResponse(
      ok: ok,
      user: user,
      token: token,
      message: message,
    );
  }

// ignore: unused_element
  LoginResponse fromJson(Map<String, Object> json) {
    return LoginResponse.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $LoginResponse = _$LoginResponseTearOff();

/// @nodoc
mixin _$LoginResponse {
  bool get ok;
  User get user;
  String get token;
  String get message;

  Map<String, dynamic> toJson();
  $LoginResponseCopyWith<LoginResponse> get copyWith;
}

/// @nodoc
abstract class $LoginResponseCopyWith<$Res> {
  factory $LoginResponseCopyWith(
          LoginResponse value, $Res Function(LoginResponse) then) =
      _$LoginResponseCopyWithImpl<$Res>;
  $Res call({bool ok, User user, String token, String message});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$LoginResponseCopyWithImpl<$Res>
    implements $LoginResponseCopyWith<$Res> {
  _$LoginResponseCopyWithImpl(this._value, this._then);

  final LoginResponse _value;
  // ignore: unused_field
  final $Res Function(LoginResponse) _then;

  @override
  $Res call({
    Object ok = freezed,
    Object user = freezed,
    Object token = freezed,
    Object message = freezed,
  }) {
    return _then(_value.copyWith(
      ok: ok == freezed ? _value.ok : ok as bool,
      user: user == freezed ? _value.user : user as User,
      token: token == freezed ? _value.token : token as String,
      message: message == freezed ? _value.message : message as String,
    ));
  }

  @override
  $UserCopyWith<$Res> get user {
    if (_value.user == null) {
      return null;
    }
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
abstract class _$LoginResponseCopyWith<$Res>
    implements $LoginResponseCopyWith<$Res> {
  factory _$LoginResponseCopyWith(
          _LoginResponse value, $Res Function(_LoginResponse) then) =
      __$LoginResponseCopyWithImpl<$Res>;
  @override
  $Res call({bool ok, User user, String token, String message});

  @override
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$LoginResponseCopyWithImpl<$Res>
    extends _$LoginResponseCopyWithImpl<$Res>
    implements _$LoginResponseCopyWith<$Res> {
  __$LoginResponseCopyWithImpl(
      _LoginResponse _value, $Res Function(_LoginResponse) _then)
      : super(_value, (v) => _then(v as _LoginResponse));

  @override
  _LoginResponse get _value => super._value as _LoginResponse;

  @override
  $Res call({
    Object ok = freezed,
    Object user = freezed,
    Object token = freezed,
    Object message = freezed,
  }) {
    return _then(_LoginResponse(
      ok: ok == freezed ? _value.ok : ok as bool,
      user: user == freezed ? _value.user : user as User,
      token: token == freezed ? _value.token : token as String,
      message: message == freezed ? _value.message : message as String,
    ));
  }
}

@JsonSerializable(explicitToJson: true)

/// @nodoc
class _$_LoginResponse implements _LoginResponse {
  const _$_LoginResponse({this.ok, this.user, this.token, this.message});

  factory _$_LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_LoginResponseFromJson(json);

  @override
  final bool ok;
  @override
  final User user;
  @override
  final String token;
  @override
  final String message;

  @override
  String toString() {
    return 'LoginResponse(ok: $ok, user: $user, token: $token, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoginResponse &&
            (identical(other.ok, ok) ||
                const DeepCollectionEquality().equals(other.ok, ok)) &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)) &&
            (identical(other.token, token) ||
                const DeepCollectionEquality().equals(other.token, token)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(ok) ^
      const DeepCollectionEquality().hash(user) ^
      const DeepCollectionEquality().hash(token) ^
      const DeepCollectionEquality().hash(message);

  @override
  _$LoginResponseCopyWith<_LoginResponse> get copyWith =>
      __$LoginResponseCopyWithImpl<_LoginResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_LoginResponseToJson(this);
  }
}

abstract class _LoginResponse implements LoginResponse {
  const factory _LoginResponse(
      {bool ok, User user, String token, String message}) = _$_LoginResponse;

  factory _LoginResponse.fromJson(Map<String, dynamic> json) =
      _$_LoginResponse.fromJson;

  @override
  bool get ok;
  @override
  User get user;
  @override
  String get token;
  @override
  String get message;
  @override
  _$LoginResponseCopyWith<_LoginResponse> get copyWith;
}
