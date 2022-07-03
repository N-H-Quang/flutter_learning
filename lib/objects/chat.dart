import 'dart:ffi';

import 'package:ex_day_2/objects/user.dart';
import 'package:json_annotation/json_annotation.dart';
part 'chat.g.dart';

@JsonSerializable()
class Chat {
  final String text;
  final User user;
  final int unread_count;
  final DateTime created_at;

  Chat(
      {required this.text,
      required this.user,
      required this.unread_count,
      required this.created_at});

  factory Chat.fromJson(Map<String, dynamic> json) => _$ChatFromJson(json);

  Map<String, dynamic> toJson() => _$ChatToJson(this);
}
