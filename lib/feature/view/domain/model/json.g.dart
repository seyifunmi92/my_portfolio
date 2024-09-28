// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'json.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Person _$PersonFromJson(Map<String, dynamic> json) => Person(
      firrstName: json['firrstName'] as String,
      lastName: json['lastName'] as String,
      adress: json['adress'] as String,
      age: (json['age'] as num?)?.toInt(),
    );

Map<String, dynamic> _$PersonToJson(Person instance) => <String, dynamic>{
      'firrstName': instance.firrstName,
      'lastName': instance.lastName,
      'adress': instance.adress,
      'age': instance.age,
    };
