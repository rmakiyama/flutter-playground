import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
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
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            SvgPicture.asset(
              'assets/graphics/image_empty.svg',
              width: 240,
            ),
            Container(
              padding: EdgeInsets.only(
                top: 16,
              ),
              child: Text(
                "How was your day?",
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
