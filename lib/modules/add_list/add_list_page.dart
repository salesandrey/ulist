
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:ulistproject/modules/add_list/add_list_store.dart';

import 'viewmodels/validator_fields_viewmodel.dart';

class AddListPage extends StatefulWidget {
  const AddListPage({Key? key}) : super(key: key);

  @override
  State<AddListPage> createState() => _AddListPageState();
}

class _AddListPageState extends State<AddListPage> {

  AddListStore store = Modular.get<AddListStore>();

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (_) =>
        Scaffold(
            appBar: AppBar(backgroundColor: const Color(0xFF00225b),
                title: const Text("Adicionar Nova Lista", style: TextStyle(
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
                        style: const TextStyle(fontSize: 10,color: Colors.black,fontFamily: "PlayFair"),
                        decoration: InputDecoration(
                            errorText: store.nameValide ? store.erroMessageName : null,
                            label: const Text("nome",style: TextStyle(fontSize: 10,color: Colors.black38)))),
                    TextField(
                        key: const Key("inputDescription"),
                        onChanged: store.changeDescription,
                        maxLength: 60,
                        style: const TextStyle(fontSize: 10,color: Colors.black,fontFamily: "PlayFair"),
                        decoration: InputDecoration(
                            errorText: store.descriptionValide ? store.erroMessageDescription : null,
                            label: const Text("descrição",style: TextStyle(fontSize: 10,color: Colors.black38)))),
                    const SizedBox(height: 25),
                    ElevatedButton(
                        key: const Key("btInsert"),
                        style: ElevatedButton.styleFrom(backgroundColor: const Color(0xFF00225b)),
                        onPressed: () {
                          if(ValidatorFieldsViewModel().validateFields(store:store)) {store.addList(context: context);}},
                        child: const Text("Inserir",style: TextStyle(fontSize: 10,color: Colors.white,fontFamily: "PlayFair")))

                  ]))
        ));
  }
}
