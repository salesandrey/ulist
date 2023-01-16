


import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:ulistproject/models/user_model.dart';

class UserRepository {

  final String collection = "usuario";

  final FirebaseFirestore database = Modular.get<FirebaseFirestore>();

  Future<UserModel?> getUser(String email) async {

    try {

      QuerySnapshot<Map<String, dynamic>> result = await database.collection(collection).where(email).get();

      if (result.docs.first.exists) {return UserModel.fromMap(result.docs.first.data());}

      else { return null; }

    } catch(e) {return null;}

  }

}