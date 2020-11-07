// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$_$_UserFromJson(Map<String, dynamic> json) {
  return _$_User(
    online: json['online'] as bool,
    email: json['email'] as String,
    name: json['name'] as String,
    uid: json['uid'] as String,
  );
}

Map<String, dynamic> _$_$_UserToJson(_$_User instance) => <String, dynamic>{
      'online': instance.online,
      'email': instance.email,
      'name': instance.name,
      'uid': instance.uid,
    };

_$_UserResponse _$_$_UserResponseFromJson(Map<String, dynamic> json) {
  return _$_UserResponse(
    ok: json['ok'] as bool,
    users: (json['users'] as List)
        ?.map(
            (e) => e == null ? null : User.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$_UserResponseToJson(_$_UserResponse instance) =>
    <String, dynamic>{
      'ok': instance.ok,
      'users': instance.users?.map((e) => e?.toJson())?.toList(),
    };
