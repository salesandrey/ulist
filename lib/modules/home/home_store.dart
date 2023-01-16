import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:mobx/mobx.dart';
import 'package:ulistproject/models/list_model.dart';
import 'package:ulistproject/repository/list_repository.dart';

part 'home_store.g.dart';

class HomeStore = HomeStoreBase with _$HomeStore;

abstract class HomeStoreBase with Store {

  HomeStoreBase({required this.database, required this.repository});

  final FirebaseFirestore database;

  final ListRepository repository;

  @observable
  bool loading = false;

  @observable
  ObservableStream<List<ListModel>?>? streamList;

  @action
  setLoading(bool value) => loading = value;

  @action
  Stream<List<ListModel>?> getStream() => streamList = repository.get("andreysales24@gmail.com").asObservable();

}