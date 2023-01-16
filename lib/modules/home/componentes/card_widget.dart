import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {

  final String title;
  final String description;
  final Function() details;

  const CardWidget({Key? key, required this.title, required this.details, required this.description}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 7.0),
      child: ListTile(
          shape: RoundedRectangleBorder(side: const BorderSide(color: Colors.black, width: 1), borderRadius: BorderRadius.circular(5)),
        onTap: details,
        leading: const Icon(Icons.paste,size: 30,color: Color((0xFF00225b))),
        subtitle: Text("Sobre: $description",style: const TextStyle(color: Colors.black,fontFamily: "PlayFair",fontSize: 10)),
        title: Text(title,style: const TextStyle(color: Colors.black,fontFamily: "PlayFair",fontSize: 15))),
    );
  }
}
