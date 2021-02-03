import 'package:flutter/material.dart';

TextStyle actionsStyle = TextStyle(fontSize: 20);

class TransAppBar {
  static AppBar transAppBar(BuildContext ctx) {
    final screenWidth = MediaQuery.of(ctx).size.width;
    print(screenWidth);
    return AppBar(
      title: Image(
        width: 200,
        image: AssetImage('assets/images/splash_logo.png'),
      ),
      actions: [
        Container(
          width: 200 * 0.75,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                child: Text('أفلام', style: actionsStyle),
              ),
              GestureDetector(
                child: Text('مسلسلات', style: actionsStyle),
              ),
              GestureDetector(
                child: Text('أطفال', style: actionsStyle),
              ),
            ],
          ),
        )
      ],
    );
  }
}
