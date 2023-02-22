import 'package:flutter/material.dart';
import 'home.dart';

//CREATED BY MAX BULANOVICH
//www.max-bul-dvlp.xyz

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}
