
import 'package:flutter/material.dart';
import 'package:ulistproject/models/list_item_model.dart';

class ItemWidget extends StatelessWidget {

  final ListItemModel item;
  final Function() delete;
  final Function() update;

  const ItemWidget({Key? key, required this.delete, required this.item, required this.update})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(bottom: 7.0),
        child: ListTile(
            onTap: update,
            shape: RoundedRectangleBorder(
                side: const BorderSide(color: Colors.black, width: 1),
                borderRadius: BorderRadius.circular(5)),
            trailing: IconButton(onPressed: delete,icon: const Icon(Icons.delete, size: 20, color: Color(0xFF00225b))),
            title: Text("${item.name}", style: const TextStyle(
                color: Colors.black, fontFamily: "PlayFair", fontSize: 15))));
  }
}
