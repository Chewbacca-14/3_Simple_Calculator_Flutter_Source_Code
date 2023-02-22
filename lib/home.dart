import 'package:flutter/material.dart';

import 'buttons.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> buttons = [
    'C',
    'DEL',
    '%',
    '/',
    '9',
    '8',
    '7',
    'x',
    '6',
    '5',
    '4',
    '-',
    '3',
    '2',
    '1',
    '+',
    '0',
    '.',
    'ANS',
    '=',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 201, 247, 202),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              child: Container(),
            ),
            Expanded(
              flex: 2,
              child: Container(
                child: GridView.builder(
                    itemCount: buttons.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 4),
                    itemBuilder: (BuildContext context, int index) {
                      if (index == 0) {
                        return Button(
                            color: Colors.grey,
                            textColor: Colors.white,
                            buttonText: buttons[index]);
                      } else if (index == 1) {
                        return Button(
                            color: Colors.red,
                            textColor: Colors.white,
                            buttonText: buttons[index]);
                      } else {
                        return Button(
                            color: isOperator(buttons[index])
                                ? Color.fromARGB(255, 87, 209, 60)
                                : Colors.white,
                            textColor: isOperator(buttons[index])
                                ? Colors.black
                                : Color.fromARGB(255, 46, 160, 50),
                            buttonText: buttons[index]);
                      }
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

bool isOperator(String x) {
  if (x == '%' || x == '/' || x == 'x' || x == '-' || x == '+' || x == '=') {
    return true;
  }
  return false;
}
