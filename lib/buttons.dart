import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final color;
  final textColor;
  final String buttonText;
  final buttonTapped;

  Button(
      {required this.color,
      required this.textColor,
      required this.buttonText,
      this.buttonTapped});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: buttonTapped,
      child: Padding(
        padding: EdgeInsets.all(8),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: Container(
            color: color,
            child: Center(
              child: Text(buttonText,
                  style: TextStyle(
                      color: textColor,
                      fontSize: 35,
                      fontWeight: FontWeight.w400)),
            ),
          ),
        ),
      ),
    );
  }
}
