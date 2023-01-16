// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_item_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$UpdateItemStore on UpdateItemStoreBase, Store {
  late final _$modelAtom =
      Atom(name: 'UpdateItemStoreBase.model', context: context);

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

  late final _$itemAtom =
      Atom(name: 'UpdateItemStoreBase.item', context: context);

  @override
  ListItemModel? get item {
    _$itemAtom.reportRead();
    return super.item;
  }

  @override
  set item(ListItemModel? value) {
    _$itemAtom.reportWrite(value, super.item, () {
      super.item = value;
    });
  }

  late final _$nameAtom =
      Atom(name: 'UpdateItemStoreBase.name', context: context);

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

  late final _$loadingAtom =
      Atom(name: 'UpdateItemStoreBase.loading', context: context);

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
      Atom(name: 'UpdateItemStoreBase.nameValide', context: context);

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

  late final _$erroMessageNameAtom =
      Atom(name: 'UpdateItemStoreBase.erroMessageName', context: context);

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

  late final _$updateItemAsyncAction =
      AsyncAction('UpdateItemStoreBase.updateItem', context: context);

  @override
  Future<void> updateItem({required BuildContext context}) {
    return _$updateItemAsyncAction
        .run(() => super.updateItem(context: context));
  }

  late final _$UpdateItemStoreBaseActionController =
      ActionController(name: 'UpdateItemStoreBase', context: context);

  @override
  dynamic setListModel(ListModel value) {
    final _$actionInfo = _$UpdateItemStoreBaseActionController.startAction(
        name: 'UpdateItemStoreBase.setListModel');
    try {
      return super.setListModel(value);
    } finally {
      _$UpdateItemStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setListItemModel(ListItemModel value) {
    final _$actionInfo = _$UpdateItemStoreBaseActionController.startAction(
        name: 'UpdateItemStoreBase.setListItemModel');
    try {
      return super.setListItemModel(value);
    } finally {
      _$UpdateItemStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setLoading(bool value) {
    final _$actionInfo = _$UpdateItemStoreBaseActionController.startAction(
        name: 'UpdateItemStoreBase.setLoading');
    try {
      return super.setLoading(value);
    } finally {
      _$UpdateItemStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic changeName(String value) {
    final _$actionInfo = _$UpdateItemStoreBaseActionController.startAction(
        name: 'UpdateItemStoreBase.changeName');
    try {
      return super.changeName(value);
    } finally {
      _$UpdateItemStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setNameValide(bool value) {
    final _$actionInfo = _$UpdateItemStoreBaseActionController.startAction(
        name: 'UpdateItemStoreBase.setNameValide');
    try {
      return super.setNameValide(value);
    } finally {
      _$UpdateItemStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setErroMessageName(String value) {
    final _$actionInfo = _$UpdateItemStoreBaseActionController.startAction(
        name: 'UpdateItemStoreBase.setErroMessageName');
    try {
      return super.setErroMessageName(value);
    } finally {
      _$UpdateItemStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
model: ${model},
item: ${item},
name: ${name},
loading: ${loading},
nameValide: ${nameValide},
erroMessageName: ${erroMessageName}
    ''';
  }
}
