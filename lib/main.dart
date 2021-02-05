import 'package:flutter/material.dart';

import 'themes/main_theme.dart';

import 'screens/home_screen.dart';
import 'screens/tab_bar_screen.dart';

void main() {
  runApp(Nights());
}

class Nights extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: mainTheme,
      initialRoute: TabBarScreen.routeName,
      routes: {
        TabBarScreen.routeName: (ctx) => TabBarScreen(),
        HomeScreen.routeName: (ctx) => HomeScreen(),
      },
    );
  }
}
