

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:ulistproject/models/list_item_model.dart';
import 'package:ulistproject/models/list_model.dart';
import 'package:ulistproject/repository/list_repository.dart';

import '../../utils/alert_utils.dart';

part 'update_item_store.g.dart';

class UpdateItemStore = UpdateItemStoreBase with _$UpdateItemStore;

abstract class UpdateItemStoreBase with Store {

  UpdateItemStoreBase({required this.database, required this.repository});

  final FirebaseFirestore database;

  final ListRepository repository;

  @observable
  ListModel? model;

  @action
  setListModel(ListModel value) => model = value;

  @observable
  ListItemModel? item;

  @action
  setListItemModel(ListItemModel value) => item = value;

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
  Future<void> updateItem({required BuildContext context}) async {

    try {
      setLoading(true);
      {
        await repository.updateItem(name: name, email: "andreysales24@gmail.com", idList: model!.id!, idItem: item!.id!).then((value) =>
            AlertUtils.showSimpleAlert(message: "Item atualizado", context: context)
        );
      }

      setLoading(false);

    } on Exception catch (e) {

      AlertUtils.showSimpleAlert(message: e.toString(), context: context);
    }
  }
}