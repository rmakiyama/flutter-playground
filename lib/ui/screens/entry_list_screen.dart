import 'package:flutter/material.dart';

class EntryListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("EntryListScreen"),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          print("EntryListScreen");
        },
        icon: Icon(Icons.add),
        label: Text("add diary"),
      ),
      body: Center(
        child: Text("EntryListScreen"),
      ),
    );
  }
}
