// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
class _$UserTearOff {
  const _$UserTearOff();

// ignore: unused_element
  _User call({bool online, String email, String name, String uid}) {
    return _User(
      online: online,
      email: email,
      name: name,
      uid: uid,
    );
  }

// ignore: unused_element
  User fromJson(Map<String, Object> json) {
    return User.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $User = _$UserTearOff();

/// @nodoc
mixin _$User {
  bool get online;
  String get email;
  String get name;
  String get uid;

  Map<String, dynamic> toJson();
  $UserCopyWith<User> get copyWith;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res>;
  $Res call({bool online, String email, String name, String uid});
}

/// @nodoc
class _$UserCopyWithImpl<$Res> implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  final User _value;
  // ignore: unused_field
  final $Res Function(User) _then;

  @override
  $Res call({
    Object online = freezed,
    Object email = freezed,
    Object name = freezed,
    Object uid = freezed,
  }) {
    return _then(_value.copyWith(
      online: online == freezed ? _value.online : online as bool,
      email: email == freezed ? _value.email : email as String,
      name: name == freezed ? _value.name : name as String,
      uid: uid == freezed ? _value.uid : uid as String,
    ));
  }
}

/// @nodoc
abstract class _$UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) then) =
      __$UserCopyWithImpl<$Res>;
  @override
  $Res call({bool online, String email, String name, String uid});
}

/// @nodoc
class __$UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res>
    implements _$UserCopyWith<$Res> {
  __$UserCopyWithImpl(_User _value, $Res Function(_User) _then)
      : super(_value, (v) => _then(v as _User));

  @override
  _User get _value => super._value as _User;

  @override
  $Res call({
    Object online = freezed,
    Object email = freezed,
    Object name = freezed,
    Object uid = freezed,
  }) {
    return _then(_User(
      online: online == freezed ? _value.online : online as bool,
      email: email == freezed ? _value.email : email as String,
      name: name == freezed ? _value.name : name as String,
      uid: uid == freezed ? _value.uid : uid as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_User implements _User {
  const _$_User({this.online, this.email, this.name, this.uid});

  factory _$_User.fromJson(Map<String, dynamic> json) =>
      _$_$_UserFromJson(json);

  @override
  final bool online;
  @override
  final String email;
  @override
  final String name;
  @override
  final String uid;

  @override
  String toString() {
    return 'User(online: $online, email: $email, name: $name, uid: $uid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _User &&
            (identical(other.online, online) ||
                const DeepCollectionEquality().equals(other.online, online)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.uid, uid) ||
                const DeepCollectionEquality().equals(other.uid, uid)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(online) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(uid);

  @override
  _$UserCopyWith<_User> get copyWith =>
      __$UserCopyWithImpl<_User>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UserToJson(this);
  }
}

abstract class _User implements User {
  const factory _User({bool online, String email, String name, String uid}) =
      _$_User;

  factory _User.fromJson(Map<String, dynamic> json) = _$_User.fromJson;

  @override
  bool get online;
  @override
  String get email;
  @override
  String get name;
  @override
  String get uid;
  @override
  _$UserCopyWith<_User> get copyWith;
}

UserResponse _$UserResponseFromJson(Map<String, dynamic> json) {
  return _UserResponse.fromJson(json);
}

/// @nodoc
class _$UserResponseTearOff {
  const _$UserResponseTearOff();

// ignore: unused_element
  _UserResponse call({bool ok, List<User> users}) {
    return _UserResponse(
      ok: ok,
      users: users,
    );
  }

// ignore: unused_element
  UserResponse fromJson(Map<String, Object> json) {
    return UserResponse.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $UserResponse = _$UserResponseTearOff();

/// @nodoc
mixin _$UserResponse {
  bool get ok;
  List<User> get users;

  Map<String, dynamic> toJson();
  $UserResponseCopyWith<UserResponse> get copyWith;
}

/// @nodoc
abstract class $UserResponseCopyWith<$Res> {
  factory $UserResponseCopyWith(
          UserResponse value, $Res Function(UserResponse) then) =
      _$UserResponseCopyWithImpl<$Res>;
  $Res call({bool ok, List<User> users});
}

/// @nodoc
class _$UserResponseCopyWithImpl<$Res> implements $UserResponseCopyWith<$Res> {
  _$UserResponseCopyWithImpl(this._value, this._then);

  final UserResponse _value;
  // ignore: unused_field
  final $Res Function(UserResponse) _then;

  @override
  $Res call({
    Object ok = freezed,
    Object users = freezed,
  }) {
    return _then(_value.copyWith(
      ok: ok == freezed ? _value.ok : ok as bool,
      users: users == freezed ? _value.users : users as List<User>,
    ));
  }
}

/// @nodoc
abstract class _$UserResponseCopyWith<$Res>
    implements $UserResponseCopyWith<$Res> {
  factory _$UserResponseCopyWith(
          _UserResponse value, $Res Function(_UserResponse) then) =
      __$UserResponseCopyWithImpl<$Res>;
  @override
  $Res call({bool ok, List<User> users});
}

/// @nodoc
class __$UserResponseCopyWithImpl<$Res> extends _$UserResponseCopyWithImpl<$Res>
    implements _$UserResponseCopyWith<$Res> {
  __$UserResponseCopyWithImpl(
      _UserResponse _value, $Res Function(_UserResponse) _then)
      : super(_value, (v) => _then(v as _UserResponse));

  @override
  _UserResponse get _value => super._value as _UserResponse;

  @override
  $Res call({
    Object ok = freezed,
    Object users = freezed,
  }) {
    return _then(_UserResponse(
      ok: ok == freezed ? _value.ok : ok as bool,
      users: users == freezed ? _value.users : users as List<User>,
    ));
  }
}

@JsonSerializable(explicitToJson: true)

/// @nodoc
class _$_UserResponse implements _UserResponse {
  const _$_UserResponse({this.ok, this.users});

  factory _$_UserResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_UserResponseFromJson(json);

  @override
  final bool ok;
  @override
  final List<User> users;

  @override
  String toString() {
    return 'UserResponse(ok: $ok, users: $users)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserResponse &&
            (identical(other.ok, ok) ||
                const DeepCollectionEquality().equals(other.ok, ok)) &&
            (identical(other.users, users) ||
                const DeepCollectionEquality().equals(other.users, users)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(ok) ^
      const DeepCollectionEquality().hash(users);

  @override
  _$UserResponseCopyWith<_UserResponse> get copyWith =>
      __$UserResponseCopyWithImpl<_UserResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UserResponseToJson(this);
  }
}

abstract class _UserResponse implements UserResponse {
  const factory _UserResponse({bool ok, List<User> users}) = _$_UserResponse;

  factory _UserResponse.fromJson(Map<String, dynamic> json) =
      _$_UserResponse.fromJson;

  @override
  bool get ok;
  @override
  List<User> get users;
  @override
  _$UserResponseCopyWith<_UserResponse> get copyWith;
}
