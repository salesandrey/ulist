

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:ulistproject/models/list_item_model.dart';
import 'package:ulistproject/models/list_model.dart';
import 'package:ulistproject/modules/add_item/viewmodels/item_validate_viewmodel.dart';

import 'update_item_store.dart';

class UpdateItemPage extends StatefulWidget {

  final ListItemModel item;
  final ListModel list;

  const UpdateItemPage({Key? key, required this.item, required this.list}) : super(key: key);

  @override
  State<UpdateItemPage> createState() => _UpdateItemPageState();
}

class _UpdateItemPageState extends State<UpdateItemPage> {

  UpdateItemStore store = Modular.get<UpdateItemStore>();


  TextEditingController nameCtr = TextEditingController();


  @override
  void initState() {
    store.setListModel(widget.list);

    store.setListItemModel(widget.item);

    nameCtr.text = widget.item.name!;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (_) =>
        Scaffold(appBar: AppBar(backgroundColor: const Color(0xFF00225b), title: Text(widget.item.name!, style: const TextStyle(color: Colors.white, fontFamily: "PlayFair"))),
            body: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      TextField(
                          controller: nameCtr,
                          key: const Key("inputName"),
                          onChanged: store.changeName,
                          maxLength: 30,
                          style: const TextStyle(fontSize: 10,
                              color: Colors.black,
                              fontFamily: "PlayFair"),
                          decoration: InputDecoration(
                              errorText: store.nameValide ? store
                                  .erroMessageName : null,
                              label: const Text("nome", style: TextStyle(
                                  fontSize: 10, color: Colors.black38)))),
                      const SizedBox(height: 25),
                      ElevatedButton(
                          key: const Key("btInsert"),
                          style: ElevatedButton.styleFrom(backgroundColor: const Color(0xFF00225b)),
                          onPressed: () {if (ItemValidateViewModel().validateFieldUpdate(store: store)) {store.updateItem(context: context);}},
                          child: const Text("Atualizar", style: TextStyle(
                              fontSize: 10,
                              color: Colors.white,
                              fontFamily: "PlayFair")))

                    ]))
        ));
  }
}
