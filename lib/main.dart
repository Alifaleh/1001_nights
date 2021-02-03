import 'package:flutter/material.dart';
import 'themes/main_theme.dart';

void main() {
  runApp(Nights());
}

class Nights extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: mainTheme,
      home: Scaffold(
        appBar: AppBar(),
        body: Container(),
      ),
    );
  }
}
