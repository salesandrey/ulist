import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:ulistproject/modules/add_item/add_item_page.dart';
import 'package:ulistproject/modules/add_item/add_item_store.dart';
import 'package:ulistproject/modules/add_list/add_list_page.dart';
import 'package:ulistproject/modules/add_list/add_list_store.dart';
import 'package:ulistproject/modules/list_manager/list_manager_page.dart';
import 'package:ulistproject/modules/list_manager/list_manager_store.dart';
import 'package:ulistproject/modules/update_item/update_item_page.dart';
import 'package:ulistproject/modules/update_item/update_item_store.dart';
import 'package:ulistproject/repository/list_repository.dart';
import 'home_page.dart';
import 'home_store.dart';

class HomeModule extends Module {

  @override
  List<Bind> get binds => [

    Bind((i) => ListRepository()),


    Bind((i) => ManagerListStore(database: i.get<FirebaseFirestore>(), repository: i.get())),
    Bind((i) => AddItemStore(database: i.get<FirebaseFirestore>(), repository: i.get())),
    Bind((i) => AddListStore(database: i.get<FirebaseFirestore>(), repository: i.get())),
    Bind((i) => UpdateItemStore(database: i.get<FirebaseFirestore>(), repository: i.get())),
    Bind((i) => HomeStore(database: i.get<FirebaseFirestore>(),repository: i.get()))

  ];

  @override
  List<ModularRoute> get routes => [
    ChildRoute(Modular.initialRoute, child: (BuildContext context, args) => const HomePage()),
    ChildRoute("/add_list", child: (BuildContext context, args) => const AddListPage()),
    ChildRoute("/add_item", child: (BuildContext context, args) => AddItemPage(list: args.data)),
    ChildRoute("/update_item", child: (BuildContext context, args) => UpdateItemPage(list: args.data[0], item: args.data[1])),
    ChildRoute("/manager", child:(BuildContext context, args) => ListManagerPage(list: args.data))
  ];


}