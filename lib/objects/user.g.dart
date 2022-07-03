// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) => User(
      name: json['name'] as String,
      gender: $enumDecode(_$GenderEnumMap, json['gender']),
      status: $enumDecode(_$StatusEnumMap, json['status']),
      picture: Picture.fromJson(json['picture'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'gender': _$GenderEnumMap[instance.gender],
      'name': instance.name,
      'status': _$StatusEnumMap[instance.status],
      'picture': instance.picture,
    };

const _$GenderEnumMap = {
  Gender.male: 'male',
  Gender.female: 'female',
};

const _$StatusEnumMap = {
  Status.online: 'online',
  Status.offline: 'offline',
  Status.private: 'private',
};
