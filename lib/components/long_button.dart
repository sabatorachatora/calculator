import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LongButton extends StatelessWidget {
  String name;
  GestureTapCallback onTap;

  LongButton(this.name, this.onTap);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
          width: 50,
          height: 104,
          child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
              ),
              child: Center(child: Text(this.name, style: TextStyle(fontWeight: FontWeight.normal, fontSize: 32),)))),
    );
  }
}
