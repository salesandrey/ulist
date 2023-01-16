import 'dart:convert';

class UserModel {
  UserModel({this.age, this.name});

  final int? age;
  final String? name;

  factory UserModel.fromJson(String str) => UserModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory UserModel.fromMap(Map<String, dynamic> json) => UserModel(age: json["idade"], name: json["name"]);

  Map<String, dynamic> toMap() => {"idade": age, "name": name};
}