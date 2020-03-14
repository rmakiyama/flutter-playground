import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            title: Text("entry"),
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            title: Text("discovery"),
            icon: Icon(Icons.search),
          ),
          BottomNavigationBarItem(
            title: Text("stats"),
            icon: Icon(Icons.insert_chart),
          ),
        ],
      ),
    );
  }
}
