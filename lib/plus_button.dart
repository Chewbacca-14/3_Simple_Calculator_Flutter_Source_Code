import 'package:flutter/material.dart';

class PButton extends StatelessWidget {
  final color;
  final textColor;
  final String? buttonText;
  final buttonTapped;

  PButton({this.color, this.textColor, this.buttonText, this.buttonTapped});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: buttonTapped,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Container(
          height: 150,
          color: color,
          child: Center(
            child: Text(buttonText!,
                style: TextStyle(
                    color: textColor,
                    fontSize: 43,
                    fontWeight: FontWeight.w400)),
          ),
        ),
      ),
    );
  }
}
