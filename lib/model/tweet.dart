
import 'package:json_annotation/json_annotation.dart';

part 'tweet.g.dart';

@JsonSerializable()
class Tweet{

  int? id;
  String? profile;
  @JsonKey(name: 'created_date', fromJson: _fromJsonTimestamp, toJson: _toJsonTimestamp)
  DateTime? michelDate;
  String? author;
  String? message;

  Tweet(this.id, this.profile, this.michelDate, this.author, this.message);

  // Fonctions de conversion pour DateTime
  static DateTime _fromJsonTimestamp(int timestamp) => DateTime.fromMillisecondsSinceEpoch(timestamp * 1000);
  static int _toJsonTimestamp(DateTime? date) => date != null ? (date.millisecondsSinceEpoch ~/ 1000) : 0;

  // Tweet.fromJson(Map<String, dynamic> json){
  //   id = json['id'];
  //   profile = json['profile'];
  //   michelDate = DateTime.fromMillisecondsSinceEpoch(json['created_date'] * 1000);
  //   author = json['author'];
  //   message = json['message'];
  // }

  factory Tweet.fromJson(Map<String, dynamic> json) => _$TweetFromJson(json);
  Map<String, dynamic> toJson() => _$TweetToJson(this);

}