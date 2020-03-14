import 'package:flutter/material.dart';
import 'package:flutterplayground/ui/screens/discovery_screen.dart';
import 'package:flutterplayground/ui/screens/entry_list_screen.dart';
import 'package:flutterplayground/ui/screens/stats_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: <Widget>[EntryListScreen(), DiscoveryScreen(), StatsScreen()],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: <BottomNavigationBarItem>[
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
