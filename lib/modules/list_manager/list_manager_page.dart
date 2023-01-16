
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:ulistproject/models/list_item_model.dart';
import 'package:ulistproject/models/list_model.dart';
import 'package:ulistproject/modules/add_list/viewmodels/validator_fields_viewmodel.dart';
import 'package:ulistproject/modules/home/componentes/empty_data_widget.dart';
import 'package:ulistproject/modules/list_manager/data/item_message_data.dart';
import 'package:ulistproject/modules/list_manager/list_manager_store.dart';
import 'package:ulistproject/modules/list_manager/viewmodel/validator_update_viewmodel.dart';

import 'componentes/item_widget.dart';


class ListManagerPage extends StatefulWidget {

  final ListModel list;

  const ListManagerPage({Key? key, required this.list}) : super(key: key);

  @override
  State<ListManagerPage> createState() => _ListManagerPageState();
}

class _ListManagerPageState extends State<ListManagerPage> {

  ManagerListStore store = Modular.get<ManagerListStore>();

  TextEditingController nameCtr = TextEditingController();
  TextEditingController descriptionCtr = TextEditingController();


  @override
  void initState() {
    store.setListModel(widget.list);
    store.getStream();

    nameCtr.text = widget.list.name!;
    descriptionCtr.text = widget.list.description!;

    store.name = widget.list.name!;
    store.description = widget.list.description!;
    super.initState();
  }

  @override
  void dispose() {
    nameCtr.dispose();
    descriptionCtr.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Observer(builder: (_) =>
        Scaffold(
          floatingActionButton: FloatingActionButton(
              backgroundColor: const Color(0xFF00225b),
              onPressed: () => Modular.to.pushNamed("add_item",arguments: widget.list).whenComplete(() => store.getStream()),
              child: const Icon(Icons.add)),
          appBar: AppBar(
              actions: [
                IconButton(onPressed: ()=> store.deleteList(context: context).then((value) => Modular.to.pop()),icon: const Icon(Icons.delete, size: 25, color: Colors.white))
              ],
              backgroundColor: const Color(0xFF00225b),
              title: Text(widget.list.name!,style: const TextStyle(color: Colors.white,fontFamily: "PlayFair"))),
          body:  Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    TextField(
                        controller: nameCtr,
                        key: const Key("inputName"),
                        onChanged: store.changeName,
                        maxLength: 30,
                        style: const TextStyle(fontSize: 10,color: Colors.black,fontFamily: "PlayFair"),
                        decoration: InputDecoration(
                            errorText: store.nameValide ? store.erroMessageName : null,
                            label: const Text("nome",style: TextStyle(fontSize: 10,color: Colors.black38)))),
                    TextField(
                        controller: descriptionCtr,
                        key: const Key("inputDescription"),
                        onChanged: store.changeDescription,
                        maxLength: 60,
                        style: const TextStyle(fontSize: 10,color: Colors.black,fontFamily: "PlayFair"),
                        decoration: InputDecoration(
                            errorText: store.descriptionValide ? store.erroMessageDescription : null,
                            label: const Text("descrição",style: TextStyle(fontSize: 10,color: Colors.black38)))),
                    const SizedBox(height: 25),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: StreamBuilder<List<ListItemModel>?>(
                        stream: store.streamList,
                        builder: (_,snapshot) {

                          if(snapshot.connectionState == ConnectionState.waiting || store.loading) {
                            return const Center(child: CircularProgressIndicator(color: Color(0xFF00225b)));
                          }

                          else if(snapshot.hasError || snapshot.data == null) {
                            return const EmptyDataWidget(message: ItemMessageData.emptyError);
                          }

                          else if(snapshot.data != null && snapshot.data!.isEmpty) {
                            return const EmptyDataWidget(message: ItemMessageData.emptyData);
                          }

                          else { return Column(children:snapshot.data!.map((e) => ItemWidget(item: e, delete: () => store.deleteItem(context: context, idItem: e.id!).then((value) => store.getStream()), 
                            update: () => Modular.to.pushNamed("update_item",arguments: [widget.list,e]).then((value) => store.getStream()))).toList());}

                        },
                      ),
                    ),
                    ElevatedButton(
                        key: const Key("btUpdate"),
                        style: ElevatedButton.styleFrom(backgroundColor: const Color(0xFF00225b)),
                        onPressed: () {
                          if(ValidatorUpdateViewModel().validateFields(store:store)){store.updateList(context: context).then((value) => store.getStream());}},
                        child: const Text("Atualizar",style: TextStyle(fontSize: 10,color: Colors.white,fontFamily: "PlayFair")))

                  ]))

        ));
  }
}
