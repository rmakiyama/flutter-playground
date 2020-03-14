import 'package:flutter/material.dart';
import 'package:flutterplayground/ui/screens/create_entry_screen.dart';

class EntryListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("EntryListScreen"),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => CreateEntryScreen(),
            ),
          );
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
