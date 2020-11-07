import 'package:freezed_annotation/freezed_annotation.dart';

part 'message.freezed.dart';
part 'message.g.dart';

@freezed
abstract class Message with _$Message {
  const factory Message(
      {String from,
      String to,
      String message,
      DateTime createdAt,
      DateTime updatedAt}) = _Message;

  factory Message.fromJson(Map<String, dynamic> json) =>
      _$MessageFromJson(json);
}

@freezed
abstract class MessageResponse with _$MessageResponse {
  @JsonSerializable(explicitToJson: true)
  const factory MessageResponse({bool ok, List<Message> messages}) =
      _MessageResponse;

  factory MessageResponse.fromJson(Map<String, dynamic> json) =>
      _$MessageResponseFromJson(json);
}
