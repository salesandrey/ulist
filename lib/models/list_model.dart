


import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';

class ListModel {

  ListModel({this.description, this.name, this.id, this.createdAt});

  final String? name;
  final String? description;
  final String? id;
  final Timestamp? createdAt;

  factory ListModel.fromJson(String str,String id) => ListModel.fromMap(json.decode(str),id);

  String toJson() => json.encode(toMap());

  factory ListModel.fromMap(Map<String, dynamic> json,String id) => ListModel(description: json["description"],createdAt: json["createdAt"], name: json["name"],id:id);

  Map<String, dynamic> toMap() => {"description": description, "name": name, "createdAt": createdAt};
}