// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Message _$MessageFromJson(Map<String, dynamic> json) {
  return _Message.fromJson(json);
}

/// @nodoc
class _$MessageTearOff {
  const _$MessageTearOff();

// ignore: unused_element
  _Message call(
      {String from,
      String to,
      String message,
      DateTime createdAt,
      DateTime updatedAt}) {
    return _Message(
      from: from,
      to: to,
      message: message,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

// ignore: unused_element
  Message fromJson(Map<String, Object> json) {
    return Message.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Message = _$MessageTearOff();

/// @nodoc
mixin _$Message {
  String get from;
  String get to;
  String get message;
  DateTime get createdAt;
  DateTime get updatedAt;

  Map<String, dynamic> toJson();
  $MessageCopyWith<Message> get copyWith;
}

/// @nodoc
abstract class $MessageCopyWith<$Res> {
  factory $MessageCopyWith(Message value, $Res Function(Message) then) =
      _$MessageCopyWithImpl<$Res>;
  $Res call(
      {String from,
      String to,
      String message,
      DateTime createdAt,
      DateTime updatedAt});
}

/// @nodoc
class _$MessageCopyWithImpl<$Res> implements $MessageCopyWith<$Res> {
  _$MessageCopyWithImpl(this._value, this._then);

  final Message _value;
  // ignore: unused_field
  final $Res Function(Message) _then;

  @override
  $Res call({
    Object from = freezed,
    Object to = freezed,
    Object message = freezed,
    Object createdAt = freezed,
    Object updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      from: from == freezed ? _value.from : from as String,
      to: to == freezed ? _value.to : to as String,
      message: message == freezed ? _value.message : message as String,
      createdAt:
          createdAt == freezed ? _value.createdAt : createdAt as DateTime,
      updatedAt:
          updatedAt == freezed ? _value.updatedAt : updatedAt as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$MessageCopyWith<$Res> implements $MessageCopyWith<$Res> {
  factory _$MessageCopyWith(_Message value, $Res Function(_Message) then) =
      __$MessageCopyWithImpl<$Res>;
  @override
  $Res call(
      {String from,
      String to,
      String message,
      DateTime createdAt,
      DateTime updatedAt});
}

/// @nodoc
class __$MessageCopyWithImpl<$Res> extends _$MessageCopyWithImpl<$Res>
    implements _$MessageCopyWith<$Res> {
  __$MessageCopyWithImpl(_Message _value, $Res Function(_Message) _then)
      : super(_value, (v) => _then(v as _Message));

  @override
  _Message get _value => super._value as _Message;

  @override
  $Res call({
    Object from = freezed,
    Object to = freezed,
    Object message = freezed,
    Object createdAt = freezed,
    Object updatedAt = freezed,
  }) {
    return _then(_Message(
      from: from == freezed ? _value.from : from as String,
      to: to == freezed ? _value.to : to as String,
      message: message == freezed ? _value.message : message as String,
      createdAt:
          createdAt == freezed ? _value.createdAt : createdAt as DateTime,
      updatedAt:
          updatedAt == freezed ? _value.updatedAt : updatedAt as DateTime,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Message implements _Message {
  const _$_Message(
      {this.from, this.to, this.message, this.createdAt, this.updatedAt});

  factory _$_Message.fromJson(Map<String, dynamic> json) =>
      _$_$_MessageFromJson(json);

  @override
  final String from;
  @override
  final String to;
  @override
  final String message;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  @override
  String toString() {
    return 'Message(from: $from, to: $to, message: $message, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Message &&
            (identical(other.from, from) ||
                const DeepCollectionEquality().equals(other.from, from)) &&
            (identical(other.to, to) ||
                const DeepCollectionEquality().equals(other.to, to)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(from) ^
      const DeepCollectionEquality().hash(to) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt);

  @override
  _$MessageCopyWith<_Message> get copyWith =>
      __$MessageCopyWithImpl<_Message>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_MessageToJson(this);
  }
}

abstract class _Message implements Message {
  const factory _Message(
      {String from,
      String to,
      String message,
      DateTime createdAt,
      DateTime updatedAt}) = _$_Message;

  factory _Message.fromJson(Map<String, dynamic> json) = _$_Message.fromJson;

  @override
  String get from;
  @override
  String get to;
  @override
  String get message;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  _$MessageCopyWith<_Message> get copyWith;
}

MessageResponse _$MessageResponseFromJson(Map<String, dynamic> json) {
  return _MessageResponse.fromJson(json);
}

/// @nodoc
class _$MessageResponseTearOff {
  const _$MessageResponseTearOff();

// ignore: unused_element
  _MessageResponse call({bool ok, List<Message> messages}) {
    return _MessageResponse(
      ok: ok,
      messages: messages,
    );
  }

// ignore: unused_element
  MessageResponse fromJson(Map<String, Object> json) {
    return MessageResponse.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $MessageResponse = _$MessageResponseTearOff();

/// @nodoc
mixin _$MessageResponse {
  bool get ok;
  List<Message> get messages;

  Map<String, dynamic> toJson();
  $MessageResponseCopyWith<MessageResponse> get copyWith;
}

/// @nodoc
abstract class $MessageResponseCopyWith<$Res> {
  factory $MessageResponseCopyWith(
          MessageResponse value, $Res Function(MessageResponse) then) =
      _$MessageResponseCopyWithImpl<$Res>;
  $Res call({bool ok, List<Message> messages});
}

/// @nodoc
class _$MessageResponseCopyWithImpl<$Res>
    implements $MessageResponseCopyWith<$Res> {
  _$MessageResponseCopyWithImpl(this._value, this._then);

  final MessageResponse _value;
  // ignore: unused_field
  final $Res Function(MessageResponse) _then;

  @override
  $Res call({
    Object ok = freezed,
    Object messages = freezed,
  }) {
    return _then(_value.copyWith(
      ok: ok == freezed ? _value.ok : ok as bool,
      messages:
          messages == freezed ? _value.messages : messages as List<Message>,
    ));
  }
}

/// @nodoc
abstract class _$MessageResponseCopyWith<$Res>
    implements $MessageResponseCopyWith<$Res> {
  factory _$MessageResponseCopyWith(
          _MessageResponse value, $Res Function(_MessageResponse) then) =
      __$MessageResponseCopyWithImpl<$Res>;
  @override
  $Res call({bool ok, List<Message> messages});
}

/// @nodoc
class __$MessageResponseCopyWithImpl<$Res>
    extends _$MessageResponseCopyWithImpl<$Res>
    implements _$MessageResponseCopyWith<$Res> {
  __$MessageResponseCopyWithImpl(
      _MessageResponse _value, $Res Function(_MessageResponse) _then)
      : super(_value, (v) => _then(v as _MessageResponse));

  @override
  _MessageResponse get _value => super._value as _MessageResponse;

  @override
  $Res call({
    Object ok = freezed,
    Object messages = freezed,
  }) {
    return _then(_MessageResponse(
      ok: ok == freezed ? _value.ok : ok as bool,
      messages:
          messages == freezed ? _value.messages : messages as List<Message>,
    ));
  }
}

@JsonSerializable(explicitToJson: true)

/// @nodoc
class _$_MessageResponse implements _MessageResponse {
  const _$_MessageResponse({this.ok, this.messages});

  factory _$_MessageResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_MessageResponseFromJson(json);

  @override
  final bool ok;
  @override
  final List<Message> messages;

  @override
  String toString() {
    return 'MessageResponse(ok: $ok, messages: $messages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MessageResponse &&
            (identical(other.ok, ok) ||
                const DeepCollectionEquality().equals(other.ok, ok)) &&
            (identical(other.messages, messages) ||
                const DeepCollectionEquality()
                    .equals(other.messages, messages)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(ok) ^
      const DeepCollectionEquality().hash(messages);

  @override
  _$MessageResponseCopyWith<_MessageResponse> get copyWith =>
      __$MessageResponseCopyWithImpl<_MessageResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_MessageResponseToJson(this);
  }
}

abstract class _MessageResponse implements MessageResponse {
  const factory _MessageResponse({bool ok, List<Message> messages}) =
      _$_MessageResponse;

  factory _MessageResponse.fromJson(Map<String, dynamic> json) =
      _$_MessageResponse.fromJson;

  @override
  bool get ok;
  @override
  List<Message> get messages;
  @override
  _$MessageResponseCopyWith<_MessageResponse> get copyWith;
}
