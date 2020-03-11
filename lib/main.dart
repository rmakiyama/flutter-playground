import 'package:flutter/material.dart';
import 'package:flutterplayground/ui/widged/RandomWords.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      title: 'Startup Name Generator',
      home: RandomWords(),
    );
  }
}
