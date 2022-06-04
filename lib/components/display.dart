
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../main.dart';

class Display extends StatelessWidget {
  String text;
  Display(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.green,
            border: Border.all(color: Colors.black),
          ),
          child: Text(text, textAlign: TextAlign.right, style: TextStyle(fontWeight: FontWeight.normal, fontSize: 32),),
    );
  }

}