

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fake_cloud_firestore/fake_cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ulistproject/firebase_options.dart';

import 'repository/list_repository.dart';

void main() async {

  group("Add List - scenary 1", () {

    //Adicionar Nova Lista no FireCloud

    test("Adicionando Lista Nova ao FireCloud", () async {

      const String name = "supermercado";
      const String description = "compras para o supermercado de amanhã";
      const String email = "andreysales24@gmail.com";

      DocumentReference? reference = await ListRepository().add(name, description, email);

      return expect(reference?.id.runtimeType, String);

    },timeout: Timeout(Duration(minutes: 1)));

    test("Update de uma lista do FireCloud", () async {

      const String name = "supermercado";
      const String description = "compras para o supermercado de amanhã";
      const String id = "12345shagsa";
      const String email = "andreysales24@gmail.com";

      await ListRepository().update(email: email, id: id, name: name, description: description);

      return expect(0, 0);

    },timeout: Timeout(Duration(minutes: 1)));

  });
}

