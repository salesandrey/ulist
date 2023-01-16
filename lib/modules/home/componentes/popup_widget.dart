
import 'package:flutter/material.dart';


class PopUpWidget extends StatelessWidget {

  final String title = "";

  final String bt = "confirmar";

  const PopUpWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(title: Text(title,style: const TextStyle(color: Color(0xFF00225b),fontFamily: "PlayFair",fontSize: 15)),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
      elevation: 0,
      actions: [
        ElevatedButton(onPressed: () {}, child: Text(bt,style: const TextStyle(color: Color(0xFF00225b),fontFamily: "PlayFair",fontSize: 10)))
      ],
    );
  }
}
