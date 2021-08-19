import 'package:flutter/material.dart';
import 'package:destini/main.dart';

// ignore: must_be_immutable
class Buttons extends StatelessWidget {
  String text;
  final buttoncolor;
  Function onPress;

  Buttons({
    required this.text,
    this.buttoncolor,
    required this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: GestureDetector(
        onTap: onPress(),
        child: Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: buttoncolor,
          ),
          child: Center(
            child: Text(
              text,
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
