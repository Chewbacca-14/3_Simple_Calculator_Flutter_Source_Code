import 'package:calculator/plus_button.dart';
import 'package:calculator/zero_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:math_expressions/math_expressions.dart';

import '=button.dart';
import 'buttons.dart';
import 'delete_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var userQuestion = '';
  var userAnswer = '';

  final List buttons = [
    'Ac',
    '/',
    'x',
    '7',
    '8',
    '9',
    '-',
    '4',
    '5',
    '6',
    '+',
    '1',
    '2',
    '3',
    '=',
    '0',
    '.',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0x17181A),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            //top area
            Expanded(
              flex: 1,
              child: Container(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const SizedBox(
                    height: 25,
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    alignment: Alignment.centerRight,
                    child: Text(
                      userQuestion,
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w500,
                          color: Colors.blue),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    alignment: Alignment.centerRight,
                    child: Text(
                      userAnswer,
                      style: TextStyle(
                          fontSize: 50,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              )),
            ),

            Column(
              children: [
                //first row | Ac, Delete, /, x
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    //Ac
                    Button(
                        buttonTapped: () {
                          {
                            setState(() {
                              userQuestion = '';
                              userAnswer = '';
                              HapticFeedback.vibrate();
                            });
                          }
                          ;
                        },
                        color: Color.fromARGB(255, 97, 97, 97),
                        textColor: Color.fromARGB(255, 150, 150, 150),
                        buttonText: buttons[0]),
                    //Delete
                    DeleteButton(
                      color: Color.fromARGB(255, 97, 97, 97),
                      buttonTapped: () {
                        setState(() {
                          userQuestion = userQuestion.substring(
                              0, userQuestion.length - 1);
                          HapticFeedback.vibrate();
                        });
                      },
                    ),
                    // /
                    Button(
                        buttonTapped: () {
                          {
                            setState(() {
                              userQuestion = userQuestion + buttons[1];
                            });
                            HapticFeedback.vibrate();
                          }
                          ;
                        },
                        color: Color.fromARGB(255, 0, 92, 178),
                        textColor: Color.fromARGB(255, 51, 156, 255),
                        buttonText: buttons[1]),
                    // x
                    Button(
                        buttonTapped: () {
                          {
                            setState(() {
                              userQuestion = userQuestion + buttons[2];
                            });
                            HapticFeedback.vibrate();
                          }
                          ;
                        },
                        color: Color.fromARGB(255, 0, 92, 178),
                        textColor: Color.fromARGB(255, 51, 156, 255),
                        buttonText: buttons[2]),
                  ],
                ),
                SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Row(
                          children: [
                            Button(
                                buttonTapped: () {
                                  {
                                    setState(() {
                                      userQuestion = userQuestion + buttons[3];
                                    });
                                    HapticFeedback.vibrate();
                                  }
                                },
                                color: Color.fromARGB(255, 48, 49, 54),
                                textColor: Color.fromARGB(255, 19, 141, 255),
                                buttonText: buttons[3]),
                            SizedBox(width: 25),
                            Button(
                                buttonTapped: () {
                                  {
                                    setState(() {
                                      userQuestion = userQuestion + buttons[4];
                                    });
                                    HapticFeedback.vibrate();
                                  }
                                },
                                color: Color.fromARGB(255, 48, 49, 54),
                                textColor: Color.fromARGB(255, 19, 141, 255),
                                buttonText: buttons[4]),
                            SizedBox(width: 25),
                            Button(
                                buttonTapped: () {
                                  {
                                    setState(() {
                                      userQuestion = userQuestion + buttons[5];
                                    });
                                    HapticFeedback.vibrate();
                                  }
                                },
                                color: Color.fromARGB(255, 48, 49, 54),
                                textColor: Color.fromARGB(255, 19, 141, 255),
                                buttonText: buttons[5]),
                          ],
                        ),
                        SizedBox(height: 25),
                        Row(
                          children: [
                            Button(
                                buttonTapped: () {
                                  {
                                    setState(() {
                                      userQuestion = userQuestion + buttons[7];
                                    });
                                    HapticFeedback.vibrate();
                                  }
                                },
                                color: Color.fromARGB(255, 48, 49, 54),
                                textColor: Color.fromARGB(255, 19, 141, 255),
                                buttonText: buttons[7]),
                            SizedBox(width: 25),
                            Button(
                                buttonTapped: () {
                                  {
                                    setState(() {
                                      userQuestion = userQuestion + buttons[8];
                                    });
                                    HapticFeedback.vibrate();
                                  }
                                },
                                color: Color.fromARGB(255, 48, 49, 54),
                                textColor: Color.fromARGB(255, 19, 141, 255),
                                buttonText: buttons[8]),
                            SizedBox(width: 25),
                            Button(
                                buttonTapped: () {
                                  {
                                    setState(() {
                                      userQuestion = userQuestion + buttons[9];
                                    });
                                    HapticFeedback.vibrate();
                                  }
                                },
                                color: Color.fromARGB(255, 48, 49, 54),
                                textColor: Color.fromARGB(255, 19, 141, 255),
                                buttonText: buttons[9]),
                          ],
                        ),
                        SizedBox(height: 25),
                        Row(
                          children: [
                            Button(
                                buttonTapped: () {
                                  {
                                    setState(() {
                                      userQuestion = userQuestion + buttons[11];
                                    });
                                    HapticFeedback.vibrate();
                                  }
                                },
                                color: Color.fromARGB(255, 48, 49, 54),
                                textColor: Color.fromARGB(255, 19, 141, 255),
                                buttonText: buttons[11]),
                            SizedBox(width: 25),
                            Button(
                                buttonTapped: () {
                                  {
                                    setState(() {
                                      userQuestion = userQuestion + buttons[12];
                                    });
                                    HapticFeedback.vibrate();
                                  }
                                },
                                color: Color.fromARGB(255, 48, 49, 54),
                                textColor: Color.fromARGB(255, 19, 141, 255),
                                buttonText: buttons[12]),
                            SizedBox(width: 25),
                            Button(
                                buttonTapped: () {
                                  {
                                    setState(() {
                                      userQuestion = userQuestion + buttons[13];
                                    });
                                    HapticFeedback.vibrate();
                                  }
                                },
                                color: Color.fromARGB(255, 48, 49, 54),
                                textColor: Color.fromARGB(255, 19, 141, 255),
                                buttonText: buttons[13]),
                          ],
                        ),
                        SizedBox(height: 25),
                        Row(
                          children: [
                            ZButton(
                                buttonTapped: () {
                                  {
                                    setState(() {
                                      userQuestion = userQuestion + buttons[15];
                                    });
                                    HapticFeedback.vibrate();
                                  }
                                },
                                color: Color.fromARGB(255, 48, 49, 54),
                                textColor: Color.fromARGB(255, 19, 141, 255),
                                buttonText: buttons[15]),
                            SizedBox(width: 25),
                            Button(
                                buttonTapped: () {
                                  setState(() {
                                    userQuestion = userQuestion + buttons[16];
                                  });
                                  HapticFeedback.vibrate();
                                },
                                color: Color.fromARGB(255, 48, 49, 54),
                                textColor: Color.fromARGB(255, 19, 141, 255),
                                buttonText: buttons[16]),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(width: 25),
                    Column(
                      children: [
                        Button(
                            buttonTapped: () {
                              setState(() {
                                userQuestion = userQuestion + buttons[6];
                              });
                              HapticFeedback.vibrate();
                            },
                            color: Color.fromARGB(255, 0, 92, 178),
                            textColor: Color.fromARGB(255, 51, 156, 255),
                            buttonText: buttons[6]),
                        SizedBox(height: 25),
                        EButton(
                            buttonTapped: () {
                              setState(() {
                                userQuestion = userQuestion + buttons[10];
                              });
                              HapticFeedback.vibrate();
                            },
                            color: Color.fromARGB(255, 0, 92, 178),
                            textColor: Color.fromARGB(255, 51, 156, 255),
                            buttonText: buttons[10]),
                        SizedBox(height: 25),
                        EButton(
                            buttonTapped: () {
                              setState(() {
                                if (userQuestion == '') {
                                  userAnswer += '';
                                  HapticFeedback.vibrate();
                                } else {
                                 
                                  equalPressed();
                                }
                              });
                            },
                            color: Color.fromARGB(255, 0, 92, 178),
                            textColor: Color.fromARGB(255, 51, 156, 255),
                            buttonText: buttons[14]),
                      ],
                    )
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  bool isOperator(x) {
    if (x == '%' || x == '/' || x == 'x' || x == '-' || x == '+' || x == '=') {
      return true;
    }
    return false;
  }

  void equalPressed() {
    String finalQuestion = userQuestion;
    finalQuestion = finalQuestion.replaceAll('x', '*');

    Parser p = Parser();
    Expression exp = p.parse(finalQuestion);
    ContextModel cm = ContextModel();
    double eval = exp.evaluate(EvaluationType.REAL, cm);

    userAnswer = eval.toString();
  }
}
