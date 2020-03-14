import 'package:flutter/material.dart';
import 'package:flutterplayground/ui/screens/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.teal,
        snackBarTheme: SnackBarThemeData(
          behavior: SnackBarBehavior.floating,
        ),
      ),
      darkTheme: ThemeData.dark(),
      home: HomeScreen(),
    );
  }
}
