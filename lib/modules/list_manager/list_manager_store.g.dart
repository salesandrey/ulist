// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_manager_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ManagerListStore on ManagerListStoreBase, Store {
  late final _$modelAtom =
      Atom(name: 'ManagerListStoreBase.model', context: context);

  @override
  ListModel? get model {
    _$modelAtom.reportRead();
    return super.model;
  }

  @override
  set model(ListModel? value) {
    _$modelAtom.reportWrite(value, super.model, () {
      super.model = value;
    });
  }

  late final _$nameAtom =
      Atom(name: 'ManagerListStoreBase.name', context: context);

  @override
  String get name {
    _$nameAtom.reportRead();
    return super.name;
  }

  @override
  set name(String value) {
    _$nameAtom.reportWrite(value, super.name, () {
      super.name = value;
    });
  }

  late final _$descriptionAtom =
      Atom(name: 'ManagerListStoreBase.description', context: context);

  @override
  String get description {
    _$descriptionAtom.reportRead();
    return super.description;
  }

  @override
  set description(String value) {
    _$descriptionAtom.reportWrite(value, super.description, () {
      super.description = value;
    });
  }

  late final _$loadingAtom =
      Atom(name: 'ManagerListStoreBase.loading', context: context);

  @override
  bool get loading {
    _$loadingAtom.reportRead();
    return super.loading;
  }

  @override
  set loading(bool value) {
    _$loadingAtom.reportWrite(value, super.loading, () {
      super.loading = value;
    });
  }

  late final _$nameValideAtom =
      Atom(name: 'ManagerListStoreBase.nameValide', context: context);

  @override
  bool get nameValide {
    _$nameValideAtom.reportRead();
    return super.nameValide;
  }

  @override
  set nameValide(bool value) {
    _$nameValideAtom.reportWrite(value, super.nameValide, () {
      super.nameValide = value;
    });
  }

  late final _$descriptionValideAtom =
      Atom(name: 'ManagerListStoreBase.descriptionValide', context: context);

  @override
  bool get descriptionValide {
    _$descriptionValideAtom.reportRead();
    return super.descriptionValide;
  }

  @override
  set descriptionValide(bool value) {
    _$descriptionValideAtom.reportWrite(value, super.descriptionValide, () {
      super.descriptionValide = value;
    });
  }

  late final _$erroMessageNameAtom =
      Atom(name: 'ManagerListStoreBase.erroMessageName', context: context);

  @override
  String get erroMessageName {
    _$erroMessageNameAtom.reportRead();
    return super.erroMessageName;
  }

  @override
  set erroMessageName(String value) {
    _$erroMessageNameAtom.reportWrite(value, super.erroMessageName, () {
      super.erroMessageName = value;
    });
  }

  late final _$erroMessageDescriptionAtom = Atom(
      name: 'ManagerListStoreBase.erroMessageDescription', context: context);

  @override
  String get erroMessageDescription {
    _$erroMessageDescriptionAtom.reportRead();
    return super.erroMessageDescription;
  }

  @override
  set erroMessageDescription(String value) {
    _$erroMessageDescriptionAtom
        .reportWrite(value, super.erroMessageDescription, () {
      super.erroMessageDescription = value;
    });
  }

  late final _$streamListAtom =
      Atom(name: 'ManagerListStoreBase.streamList', context: context);

  @override
  ObservableStream<List<ListItemModel>?>? get streamList {
    _$streamListAtom.reportRead();
    return super.streamList;
  }

  @override
  set streamList(ObservableStream<List<ListItemModel>?>? value) {
    _$streamListAtom.reportWrite(value, super.streamList, () {
      super.streamList = value;
    });
  }

  late final _$updateListAsyncAction =
      AsyncAction('ManagerListStoreBase.updateList', context: context);

  @override
  Future<void> updateList({required BuildContext context}) {
    return _$updateListAsyncAction
        .run(() => super.updateList(context: context));
  }

  late final _$deleteListAsyncAction =
      AsyncAction('ManagerListStoreBase.deleteList', context: context);

  @override
  Future<void> deleteList({required BuildContext context}) {
    return _$deleteListAsyncAction
        .run(() => super.deleteList(context: context));
  }

  late final _$deleteItemAsyncAction =
      AsyncAction('ManagerListStoreBase.deleteItem', context: context);

  @override
  Future<void> deleteItem(
      {required BuildContext context, required String idItem}) {
    return _$deleteItemAsyncAction
        .run(() => super.deleteItem(context: context, idItem: idItem));
  }

  late final _$ManagerListStoreBaseActionController =
      ActionController(name: 'ManagerListStoreBase', context: context);

  @override
  dynamic setListModel(ListModel value) {
    final _$actionInfo = _$ManagerListStoreBaseActionController.startAction(
        name: 'ManagerListStoreBase.setListModel');
    try {
      return super.setListModel(value);
    } finally {
      _$ManagerListStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setLoading(bool value) {
    final _$actionInfo = _$ManagerListStoreBaseActionController.startAction(
        name: 'ManagerListStoreBase.setLoading');
    try {
      return super.setLoading(value);
    } finally {
      _$ManagerListStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic changeName(String value) {
    final _$actionInfo = _$ManagerListStoreBaseActionController.startAction(
        name: 'ManagerListStoreBase.changeName');
    try {
      return super.changeName(value);
    } finally {
      _$ManagerListStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic changeDescription(String value) {
    final _$actionInfo = _$ManagerListStoreBaseActionController.startAction(
        name: 'ManagerListStoreBase.changeDescription');
    try {
      return super.changeDescription(value);
    } finally {
      _$ManagerListStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setNameValide(bool value) {
    final _$actionInfo = _$ManagerListStoreBaseActionController.startAction(
        name: 'ManagerListStoreBase.setNameValide');
    try {
      return super.setNameValide(value);
    } finally {
      _$ManagerListStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setDescriptionValide(bool value) {
    final _$actionInfo = _$ManagerListStoreBaseActionController.startAction(
        name: 'ManagerListStoreBase.setDescriptionValide');
    try {
      return super.setDescriptionValide(value);
    } finally {
      _$ManagerListStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setErroMessageName(String value) {
    final _$actionInfo = _$ManagerListStoreBaseActionController.startAction(
        name: 'ManagerListStoreBase.setErroMessageName');
    try {
      return super.setErroMessageName(value);
    } finally {
      _$ManagerListStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setErroMessageDescription(String value) {
    final _$actionInfo = _$ManagerListStoreBaseActionController.startAction(
        name: 'ManagerListStoreBase.setErroMessageDescription');
    try {
      return super.setErroMessageDescription(value);
    } finally {
      _$ManagerListStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  Stream<List<ListItemModel>?> getStream() {
    final _$actionInfo = _$ManagerListStoreBaseActionController.startAction(
        name: 'ManagerListStoreBase.getStream');
    try {
      return super.getStream();
    } finally {
      _$ManagerListStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
model: ${model},
name: ${name},
description: ${description},
loading: ${loading},
nameValide: ${nameValide},
descriptionValide: ${descriptionValide},
erroMessageName: ${erroMessageName},
erroMessageDescription: ${erroMessageDescription},
streamList: ${streamList}
    ''';
  }
}
