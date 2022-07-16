import 'package:json_annotation/json_annotation.dart';

part 'owner.g.dart';

@JsonSerializable()
class Owner{
String? id;
String? title;
String? firstName;
String? lastName;
String? picture;

  Owner({this.id, this.title, this.firstName, this.lastName, this.picture});

  factory Owner.fromJson(Map<String, dynamic> json)=>_$OwnerFromJson(json);

  Map<String, dynamic> toJson()=>_$OwnerToJson(this);
}