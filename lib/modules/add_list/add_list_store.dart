






import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:ulistproject/repository/list_repository.dart';
import 'package:ulistproject/utils/alert_utils.dart';

part 'add_list_store.g.dart';

class AddListStore = AddListStoreBase with _$AddListStore;

abstract class AddListStoreBase with Store {

  AddListStoreBase({required this.database, required this.repository});

  final FirebaseFirestore database;

  final ListRepository repository;

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
  Future<void> addList({required BuildContext context}) async {

    try {
      setLoading(true);
      {
        await repository.add(name, description, "andreysales24@gmail.com");
        Modular.to.pop();
      }

      setLoading(false);

    } on Exception catch (e) {

      AlertUtils.showSimpleAlert(message: e.toString(), context: context);
    }
  }
}