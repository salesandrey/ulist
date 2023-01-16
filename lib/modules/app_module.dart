
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:ulistproject/modules/home/home_module.dart';

class AppModule extends Module {

  @override
  List<Bind> get binds => [

    Bind.singleton((i) => FirebaseFirestore.instance)

  ];

  @override
  List<ModularRoute> get routes => [
    ModuleRoute(Modular.initialRoute, module: HomeModule()),
  ];

}