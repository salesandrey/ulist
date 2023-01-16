
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:ulistproject/models/list_model.dart';

import 'add_item_store.dart';
import 'viewmodels/item_validate_viewmodel.dart';

class AddItemPage extends StatefulWidget {

  final ListModel list;

  const AddItemPage({Key? key, required this.list}) : super(key: key);

  @override
  State<AddItemPage> createState() => _AddItemPageState();
}

class _AddItemPageState extends State<AddItemPage> {

  AddItemStore store = Modular.get<AddItemStore>();


  @override
  void initState() {
    store.setListModel(widget.list);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (_) =>
        Scaffold(
            appBar: AppBar(backgroundColor: const Color(0xFF00225b),
                title: const Text("Adicionar Novo Item", style: TextStyle(
                    color: Colors.white, fontFamily: "PlayFair"))),
            body: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      TextField(
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
                          style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFF00225b)),
                          onPressed: () {
                            if (ItemValidateViewModel().validateFields(store: store)) {
                              store.addItem(context: context);
                            }
                          },
                          child: const Text("Inserir", style: TextStyle(
                              fontSize: 10,
                              color: Colors.white,
                              fontFamily: "PlayFair")))

                    ]))
        ));
  }
}