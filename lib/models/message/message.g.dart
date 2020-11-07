// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Message _$_$_MessageFromJson(Map<String, dynamic> json) {
  return _$_Message(
    from: json['from'] as String,
    to: json['to'] as String,
    message: json['message'] as String,
    createdAt: json['createdAt'] == null
        ? null
        : DateTime.parse(json['createdAt'] as String),
    updatedAt: json['updatedAt'] == null
        ? null
        : DateTime.parse(json['updatedAt'] as String),
  );
}

Map<String, dynamic> _$_$_MessageToJson(_$_Message instance) =>
    <String, dynamic>{
      'from': instance.from,
      'to': instance.to,
      'message': instance.message,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

_$_MessageResponse _$_$_MessageResponseFromJson(Map<String, dynamic> json) {
  return _$_MessageResponse(
    ok: json['ok'] as bool,
    messages: (json['messages'] as List)
        ?.map((e) =>
            e == null ? null : Message.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$_MessageResponseToJson(_$_MessageResponse instance) =>
    <String, dynamic>{
      'ok': instance.ok,
      'messages': instance.messages?.map((e) => e?.toJson())?.toList(),
    };
