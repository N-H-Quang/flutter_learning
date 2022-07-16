import 'dart:ffi';

import 'package:ex_day_2/modules/exercise4/models/owner.dart';
import 'package:json_annotation/json_annotation.dart';
part 'post.g.dart';

@JsonSerializable()
class Post{
  String? id;
  int? likes;
  List<String>? tags;
  String? text;
  DateTime? publishDate;
  Owner? owner;
  String? image;

  Post({this.id, this.likes, this.tags, this.text, this.publishDate, this.owner, this.image});

  factory Post.fromJson(Map<String, dynamic> json) => _$PostFromJson(json);

  Map<String, dynamic> toJson() => _$PostToJson(this);
}