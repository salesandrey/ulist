import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:ulistproject/models/list_item_model.dart';
import 'package:ulistproject/models/list_model.dart';
import 'package:ulistproject/repository/list_repository.dart';
import 'package:ulistproject/utils/alert_utils.dart';

part 'list_manager_store.g.dart';

class ManagerListStore  = ManagerListStoreBase with _$ManagerListStore ;

abstract class ManagerListStoreBase with Store {

  ManagerListStoreBase({required this.database, required this.repository});

  final FirebaseFirestore database;

  final ListRepository repository;

  @observable
  ListModel? model;

  @action
  setListModel(ListModel value) => model = value;

  @observable
  String name = "";

  @observable
  String description = "";

  @observable
  bool loading = false;

  @observable
  bool nameValide = true;

  @observable
  bool descriptionValide = true;

  @observable
  String erroMessageName = "";

  @observable
  String erroMessageDescription = "";

  @action
  setLoading(bool value) => loading = value;

  @action
  changeName(String value) => name = value;

  @action
  changeDescription(String value) => description = value;

  @action
  setNameValide(bool value) => nameValide = value;

  @action
  setDescriptionValide(bool value) => descriptionValide = value;

  @action
  setErroMessageName(String value) => erroMessageName = value;

  @action
  setErroMessageDescription(String value) => erroMessageDescription = value;

  @action
  Future<void> updateList({required BuildContext context}) async {

    try {
      setLoading(true);
      {
        await repository.update(name: name,description: description, email: "andreysales24@gmail.com",id: model!.id!).then((value) =>
            AlertUtils.showSimpleAlert(message: "Lista atualizada", context: context)
        );

      }

      setLoading(false);

    } on Exception catch (e) {

      AlertUtils.showSimpleAlert(message: e.toString(), context: context);
    }
  }

  @action
  Future<void> deleteList({required BuildContext context}) async {

    try {
      setLoading(true);
      {
        await repository.delete(email: "andreysales24@gmail.com", idList: model!.id!);
      }

      setLoading(false);

    } on Exception catch (e) {

      AlertUtils.showSimpleAlert(message: e.toString(), context: context);
    }
  }

  @action
  Future<void> deleteItem({required BuildContext context, required String idItem}) async {

    try {
      setLoading(true);
      {
        await repository.deleteItem(email: "andreysales24@gmail.com", idList: model!.id!, idItem: idItem);
      }

      setLoading(false);

    } on Exception catch (e) {

      AlertUtils.showSimpleAlert(message: e.toString(), context: context);
    }
  }

  @observable
  ObservableStream<List<ListItemModel>?>? streamList;

  @action
  Stream<List<ListItemModel>?> getStream() => streamList = repository.getItems("andreysales24@gmail.com", model!.id!).asObservable();

}