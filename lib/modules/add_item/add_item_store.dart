import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:ulistproject/models/list_model.dart';
import 'package:ulistproject/repository/list_repository.dart';
import 'package:ulistproject/utils/alert_utils.dart';

part 'add_item_store.g.dart';

class AddItemStore = AddItemStoreBase with _$AddItemStore;

abstract class AddItemStoreBase with Store {

  AddItemStoreBase({required this.database, required this.repository});

  final FirebaseFirestore database;

  final ListRepository repository;

  @observable
  ListModel? model;

  @action
  setListModel(ListModel value) => model = value;

  @observable
  String name = "";

  @observable
  bool loading = false;

  @observable
  bool nameValide = true;

  @observable
  String erroMessageName = "";

  @action
  setLoading(bool value) => loading = value;

  @action
  changeName(String value) => name = value;

  @action
  setNameValide(bool value) => nameValide = value;

  @action
  setErroMessageName(String value) => erroMessageName = value;

  @action
  Future<void> addItem({required BuildContext context}) async {

    try {
      setLoading(true);
      {
        await repository.addElementToList(name: name, email: "andreysales24@gmail.com", idList: model!.id!);
        Modular.to.pop();
      }

      setLoading(false);

    } on Exception catch (e) {

      AlertUtils.showSimpleAlert(message: e.toString(), context: context);
    }
  }
}