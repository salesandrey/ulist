
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:ulistproject/models/list_model.dart';
import 'package:ulistproject/modules/home/componentes/card_widget.dart';
import 'package:ulistproject/modules/home/data/messages_data.dart';

import 'componentes/empty_data_widget.dart';
import 'home_store.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();

}

class _HomePageState extends State<HomePage> {

  HomeStore store = Modular.get();

  @override
  void initState() {
    store.getStream();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (_) =>
        Scaffold(
          floatingActionButton: FloatingActionButton(
              key: const Key("btAdd"),
              backgroundColor: const Color(0xFF00225b),
              onPressed: () => Modular.to.pushNamed("add_list").whenComplete(() => store.getStream()),
              child: const Icon(Icons.add)),
          appBar: AppBar(
            backgroundColor: const Color(0xFF00225b),
            title: const Text("Minhas Listas",style: TextStyle(color: Colors.white,fontFamily: "PlayFair"))),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 20),
            child: StreamBuilder<List<ListModel>?>(
              stream: store.streamList,
              builder: (_,snapshot) {

                if(snapshot.connectionState == ConnectionState.waiting || store.loading) {
                  return const Center(child: CircularProgressIndicator(color: Color(0xFF00225b)));
                }

                else if(snapshot.hasError || snapshot.data == null) {
                  return const EmptyDataWidget(message: MessagesData.emptyError);
                }

                else if(snapshot.data != null && snapshot.data!.isEmpty) {
                  return const EmptyDataWidget(message: MessagesData.emptyData);
                }

                else { return Column(children:snapshot.data!.map((e) =>
                    CardWidget(title: e.name!, details: () => Modular.to.pushNamed("manager",arguments: e).then((value) => store.getStream()) , description: e.description!)).toList());}

              },
            ),
          ),
        ));
  }
}
