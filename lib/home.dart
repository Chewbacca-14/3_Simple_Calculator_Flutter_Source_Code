import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:math_expressions/math_expressions.dart';
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
    '7',
    '8',
    '9',
    'x',
    '4',
    '5',
    '6',
    '-',
    '1',
    '2',
    '3',
    '+',
    '00',
    '0',
    '.',
    '=',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
                    height: 50,
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    alignment: Alignment.centerRight,
                    child: Text(
                      userQuestion,
                      style:
                          TextStyle(fontSize: 35, fontWeight: FontWeight.w500),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    alignment: Alignment.centerRight,
                    child: Text(
                      userAnswer,
                      style: TextStyle(fontSize: 25, color: Colors.grey[700]),
                    ),
                  ),
                  Container(
                    color: Color.fromARGB(170, 158, 158, 158),
                    width: MediaQuery.of(context).size.width,
                    height: 2,
                  )
                ],
              )),
            ),
            Container(
              height: MediaQuery.of(context).size.width * 1.25,
              child: GridView.builder(
                  itemCount: buttons.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4),
                  itemBuilder: (BuildContext context, int index) {
                    if (index == 0) {
                      // C button
                      return Button(
                          buttonTapped: () {
                            setState(() {
                              userQuestion = '';
                              userAnswer = '';
                              HapticFeedback.vibrate();
                            });
                          },
                          color: Color.fromARGB(52, 197, 197, 197),
                          textColor: Colors.red,
                          buttonText: buttons[index]);
                    } else if (index == 1) {
                      // DEL button
                      return Button(
                          buttonTapped: () {
                            setState(() {
                              userQuestion = userQuestion.substring(
                                  0, userQuestion.length - 1);
                                  HapticFeedback.vibrate();
                            });
                          },
                          color: Color.fromARGB(52, 197, 197, 197),
                          textColor: Colors.redAccent,
                          buttonText: buttons[index]);
                    } else if (index == buttons.length - 1) {
                      // = button
                      return Button(
                          buttonTapped: () {
                            setState(() {
                              if (userQuestion == '') {
                                userAnswer += '';
                                HapticFeedback.vibrate();
                              } else {
                                equalPressed();
                                
                              }
                              
                            });
                            HapticFeedback.vibrate();
                          },
                          color: Colors.green,
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
                          color: Color.fromARGB(52, 197, 197, 197),
                          textColor: isOperator(buttons[index])
                              ? Colors.green
                              : Colors.grey[800],
                          buttonText: buttons[index]);
                    }
                  }),
            ),
          ],
        ),
      ),
    );
  }

  bool isOperator(String x) {
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
