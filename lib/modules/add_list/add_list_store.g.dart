// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_list_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$AddListStore on AddListStoreBase, Store {
  late final _$nameAtom = Atom(name: 'AddListStoreBase.name', context: context);

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
      Atom(name: 'AddListStoreBase.description', context: context);

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
      Atom(name: 'AddListStoreBase.loading', context: context);

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
      Atom(name: 'AddListStoreBase.nameValide', context: context);

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
      Atom(name: 'AddListStoreBase.descriptionValide', context: context);

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
      Atom(name: 'AddListStoreBase.erroMessageName', context: context);

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

  late final _$erroMessageDescriptionAtom =
      Atom(name: 'AddListStoreBase.erroMessageDescription', context: context);

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

  late final _$addListAsyncAction =
      AsyncAction('AddListStoreBase.addList', context: context);

  @override
  Future<void> addList({required BuildContext context}) {
    return _$addListAsyncAction.run(() => super.addList(context: context));
  }

  late final _$AddListStoreBaseActionController =
      ActionController(name: 'AddListStoreBase', context: context);

  @override
  dynamic setLoading(bool value) {
    final _$actionInfo = _$AddListStoreBaseActionController.startAction(
        name: 'AddListStoreBase.setLoading');
    try {
      return super.setLoading(value);
    } finally {
      _$AddListStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic changeName(String value) {
    final _$actionInfo = _$AddListStoreBaseActionController.startAction(
        name: 'AddListStoreBase.changeName');
    try {
      return super.changeName(value);
    } finally {
      _$AddListStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic changeDescription(String value) {
    final _$actionInfo = _$AddListStoreBaseActionController.startAction(
        name: 'AddListStoreBase.changeDescription');
    try {
      return super.changeDescription(value);
    } finally {
      _$AddListStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setNameValide(bool value) {
    final _$actionInfo = _$AddListStoreBaseActionController.startAction(
        name: 'AddListStoreBase.setNameValide');
    try {
      return super.setNameValide(value);
    } finally {
      _$AddListStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setDescriptionValide(bool value) {
    final _$actionInfo = _$AddListStoreBaseActionController.startAction(
        name: 'AddListStoreBase.setDescriptionValide');
    try {
      return super.setDescriptionValide(value);
    } finally {
      _$AddListStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setErroMessageName(String value) {
    final _$actionInfo = _$AddListStoreBaseActionController.startAction(
        name: 'AddListStoreBase.setErroMessageName');
    try {
      return super.setErroMessageName(value);
    } finally {
      _$AddListStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setErroMessageDescription(String value) {
    final _$actionInfo = _$AddListStoreBaseActionController.startAction(
        name: 'AddListStoreBase.setErroMessageDescription');
    try {
      return super.setErroMessageDescription(value);
    } finally {
      _$AddListStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
name: ${name},
description: ${description},
loading: ${loading},
nameValide: ${nameValide},
descriptionValide: ${descriptionValide},
erroMessageName: ${erroMessageName},
erroMessageDescription: ${erroMessageDescription}
    ''';
  }
}
