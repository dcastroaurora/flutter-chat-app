// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LoginResponse _$_$_LoginResponseFromJson(Map<String, dynamic> json) {
  return _$_LoginResponse(
    ok: json['ok'] as bool,
    user: json['user'] == null
        ? null
        : User.fromJson(json['user'] as Map<String, dynamic>),
    token: json['token'] as String,
    message: json['message'] as String,
  );
}

Map<String, dynamic> _$_$_LoginResponseToJson(_$_LoginResponse instance) =>
    <String, dynamic>{
      'ok': instance.ok,
      'user': instance.user?.toJson(),
      'token': instance.token,
      'message': instance.message,
    };
