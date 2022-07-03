import 'package:ex_day_2/objects/gender.dart';
import 'package:ex_day_2/objects/picture.dart';
import 'package:ex_day_2/objects/status.dart';
import 'package:json_annotation/json_annotation.dart';
part 'user.g.dart';

@JsonSerializable()
class User {
  final Gender gender;
  final String name;
  final Status status;
  final Picture picture;

  User(
      {required this.name,
      required this.gender,
      required this.status,
      required this.picture});

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  /// Connect the generated [_$UserFromJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$UserToJson(this);
}
