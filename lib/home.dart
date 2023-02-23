import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'buttons.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var userQuestion = '';
  var userAnswer = '';

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
            //top area
            Expanded(
              child: Container(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      userQuestion,
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    alignment: Alignment.centerRight,
                    child: Text(
                      userAnswer,
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ],
              )),
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
                        // C button
                        return Button(
                            buttonTapped: () {
                              setState(() {
                                userQuestion = '';
                              });
                            },
                            color: Colors.grey,
                            textColor: Colors.white,
                            buttonText: buttons[index]);
                      } else if (index == 1) {
                        // DEL button
                        return Button(
                            buttonTapped: () {
                             setState(() {
                                userQuestion = userQuestion.substring(
                                  0, userQuestion.length - 1);
                             });
                            },
                            color: Colors.red,
                            textColor: Colors.white,
                            buttonText: buttons[index]);
                      } else {
                        return Button(
                            buttonTapped: () {
                              setState(() {
                                userQuestion = userQuestion + buttons[index];
                              });
                              HapticFeedback.vibrate();
                            },
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
