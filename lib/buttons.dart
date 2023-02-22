import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final color;
  final textColor;
  final String buttonText;

  Button(
      {required this.color, required this.textColor, required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Container(
          color: color,
          child: Center(
            child: Text(buttonText,
                style: TextStyle(color: textColor, fontSize: 20)),
          ),
        ),
      ),
    );
  }
}
