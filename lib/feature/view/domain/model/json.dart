import 'package:json_annotation/json_annotation.dart';

part 'json.g.dart';

@JsonSerializable()
class Person {
  String firrstName, lastName, adress;
  int? age;

  Person({required this.firrstName, required this.lastName, required this.adress, this.age});

  factory Person.fromJson(Map<String, dynamic> json) => _$PersonFromJson(json);

  Map<String, dynamic> toJson() => _$PersonToJson(this);
}
