import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class StatsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("StatsScreen"),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            SvgPicture.asset(
              'assets/graphics/image_coming_soon.svg',
              width: 240,
            ),
            Container(
              padding: EdgeInsets.only(
                top: 16,
              ),
              child: Text(
                "Coming soon...",
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
