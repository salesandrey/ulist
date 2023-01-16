import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';

class ListItemModel {

  ListItemModel({this.name, this.id, this.createdAt});

  final String? name;
  final String? id;
  final Timestamp? createdAt;

  factory ListItemModel.fromJson(String str,String id) => ListItemModel.fromMap(json.decode(str),id);

  String toJson() => json.encode(toMap());

  factory ListItemModel.fromMap(Map<String, dynamic> json,String id) => ListItemModel(createdAt: json["createdAt"], name: json["name"],id:id);

  Map<String, dynamic> toMap() => {"name": name, "createdAt": createdAt};
}