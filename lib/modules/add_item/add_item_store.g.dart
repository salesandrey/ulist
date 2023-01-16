// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_item_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$AddItemStore on AddItemStoreBase, Store {
  late final _$modelAtom =
      Atom(name: 'AddItemStoreBase.model', context: context);

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

  late final _$nameAtom = Atom(name: 'AddItemStoreBase.name', context: context);

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
      Atom(name: 'AddItemStoreBase.loading', context: context);

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
      Atom(name: 'AddItemStoreBase.nameValide', context: context);

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
      Atom(name: 'AddItemStoreBase.erroMessageName', context: context);

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

  late final _$addItemAsyncAction =
      AsyncAction('AddItemStoreBase.addItem', context: context);

  @override
  Future<void> addItem({required BuildContext context}) {
    return _$addItemAsyncAction.run(() => super.addItem(context: context));
  }

  late final _$AddItemStoreBaseActionController =
      ActionController(name: 'AddItemStoreBase', context: context);

  @override
  dynamic setListModel(ListModel value) {
    final _$actionInfo = _$AddItemStoreBaseActionController.startAction(
        name: 'AddItemStoreBase.setListModel');
    try {
      return super.setListModel(value);
    } finally {
      _$AddItemStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setLoading(bool value) {
    final _$actionInfo = _$AddItemStoreBaseActionController.startAction(
        name: 'AddItemStoreBase.setLoading');
    try {
      return super.setLoading(value);
    } finally {
      _$AddItemStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic changeName(String value) {
    final _$actionInfo = _$AddItemStoreBaseActionController.startAction(
        name: 'AddItemStoreBase.changeName');
    try {
      return super.changeName(value);
    } finally {
      _$AddItemStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setNameValide(bool value) {
    final _$actionInfo = _$AddItemStoreBaseActionController.startAction(
        name: 'AddItemStoreBase.setNameValide');
    try {
      return super.setNameValide(value);
    } finally {
      _$AddItemStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setErroMessageName(String value) {
    final _$actionInfo = _$AddItemStoreBaseActionController.startAction(
        name: 'AddItemStoreBase.setErroMessageName');
    try {
      return super.setErroMessageName(value);
    } finally {
      _$AddItemStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
model: ${model},
name: ${name},
loading: ${loading},
nameValide: ${nameValide},
erroMessageName: ${erroMessageName}
    ''';
  }
}
