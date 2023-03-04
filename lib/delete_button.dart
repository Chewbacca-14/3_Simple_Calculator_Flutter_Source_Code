import 'package:flutter/material.dart';

class DeleteButton extends StatelessWidget {
  final color;
  final textColor;

  final buttonTapped;

  DeleteButton({this.color, this.textColor, this.buttonTapped});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: buttonTapped,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Container(
          height: 75,
          width: 75,
          color: color,
          child: Center(
              child: Icon(
            Icons.backspace_outlined,
            size: 30,
            color: Color.fromARGB(255, 150, 150, 150),
          )),
        ),
      ),
    );
  }
}
