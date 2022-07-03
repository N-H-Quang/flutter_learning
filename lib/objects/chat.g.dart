// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Chat _$ChatFromJson(Map<String, dynamic> json) => Chat(
      text: json['text'] as String,
      user: User.fromJson(json['user'] as Map<String, dynamic>),
      unread_count: json['unread_count'] as int,
      created_at: DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$ChatToJson(Chat instance) => <String, dynamic>{
      'text': instance.text,
      'user': instance.user,
      'unread_count': instance.unread_count,
      'created_at': instance.created_at.toIso8601String(),
    };
