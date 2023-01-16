import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fake_cloud_firestore/fake_cloud_firestore.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:ulistproject/models/list_item_model.dart';
import 'package:ulistproject/models/list_model.dart';

class ListRepository {

  final String collection = "usuario";

  final String query = "listas";

  final String itemQuery = "items";

  final FirebaseFirestore database = FakeFirebaseFirestore();

  Stream<List<ListModel>?> get(String email) async* {

    try {

      final listRef = database.collection(collection).doc(email).collection(query).withConverter(
          fromFirestore: (snapshot,_) => ListModel.fromMap(snapshot.data()!,snapshot.id),
          toFirestore: (listModel, _) => listModel.toMap());

      yield await listRef.get().then((value) => value.docs.map((e) => e.data()).toList());


    } catch(e) {
      print(e);
      yield null;}

  }

  Stream<List<ListItemModel>?> getItems(String email,String idList) async* {

    try {

      final listRef = database.collection(collection).doc(email).collection(query).doc(idList).collection(itemQuery).withConverter(
          fromFirestore: (snapshot,_) => ListItemModel.fromMap(snapshot.data()!,snapshot.id),
          toFirestore: (listModel, _) => listModel.toMap());

      yield await listRef.get().then((value) => value.docs.map((e) => e.data()).toList());


    } catch(e) {
      print(e);
      yield null;}

  }

  Future<DocumentReference?> add(String name,String description,String email) async {

    final listRef = database.collection(collection).doc(email).collection(query).withConverter(
        fromFirestore: (snapshot,_) => ListModel.fromMap(snapshot.data()!,snapshot.id),
        toFirestore: (listModel, _) => listModel.toMap());

    try {

      return await listRef.add(ListModel(description: description, name: name,createdAt: Timestamp.now()));

    }catch(e) {

      return null;
    }

  }

  Future<void> delete({required String email, required String idList}) async {

    try {

      database.collection(collection).doc(email).collection(query).doc(idList).delete();

    }catch(e){}

  }

  Future<void> update({required String email, required String id, required String name, required String description}) async {

    final listRef = database.collection(collection).doc(email).collection(query).doc(id).withConverter(
        fromFirestore: (snapshot,_) => ListModel.fromMap(snapshot.data()!,snapshot.id),
        toFirestore: (listModel, _) => listModel.toMap());

    try {

      await listRef.update(ListModel(name: name,description: description,createdAt: Timestamp.now()).toMap());

    }catch(e) {}


  }

  Future<void> updateItem({required String email, required String idList, required String name,required String idItem}) async {

    final listRef = database.collection(collection).doc(email).collection(query).doc(idList).collection(itemQuery).doc(idItem).withConverter(
        fromFirestore: (snapshot,_) => ListItemModel.fromMap(snapshot.data()!,snapshot.id),
        toFirestore: (listModel, _) => listModel.toMap());

    try {

      await listRef.update(ListItemModel(name: name,createdAt: Timestamp.now()).toMap());

    }catch(e) {}


  }

  Future<void> addElementToList({required String name, required String email, required String idList}) async {

    final listRef = database.collection(collection).doc(email).collection(query).doc(idList).collection(itemQuery).withConverter(
        fromFirestore: (snapshot,_) => ListItemModel.fromMap(snapshot.data()!,snapshot.id),
        toFirestore: (listModel, _) => listModel.toMap());

    try {



      await listRef.add(ListItemModel(name: name,createdAt: Timestamp.now()));

    }catch(e) {}

  }

  Future<void> deleteItem({required String email, required String idList, required String idItem}) async {

    try {

      database.collection(collection).doc(email).collection(query).doc(idList).collection(itemQuery).doc(idItem).delete();

    }catch(e){}

  }


}