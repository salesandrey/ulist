


import 'package:flutter/material.dart';

class AlertUtils {

  static showSimpleAlert({required String message, required BuildContext context,}) =>
      showDialog(
        context: context,
        builder: (_) => AlertDialog(
          backgroundColor: Colors.white,
          content: Text(
            message,
            textAlign: TextAlign.center,
            style: const TextStyle(color: Color(0xFF00225b), fontSize: 14, fontFamily: 'PlayFair'))));

}