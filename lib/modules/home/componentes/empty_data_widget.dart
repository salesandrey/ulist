
import 'package:flutter/material.dart';

class EmptyDataWidget extends StatelessWidget {

  final String message;

  const EmptyDataWidget({Key? key, required this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(child: Text(message, textAlign: TextAlign.center,
      style: const TextStyle(fontSize: 10,color: Colors.black,fontFamily: "PlayFair")));
  }
}
