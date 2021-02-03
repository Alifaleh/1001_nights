import 'package:flutter/material.dart';

import 'themes/main_theme.dart';

import 'widgets/landing_show.dart';
import 'widgets/app_bar.dart';

void main() {
  runApp(Nights());
}

class Nights extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: mainTheme,
      home: Scaffold(
        appBar: TransAppBar.transAppBar(context),
        body: Container(
          child: LandingShow(
            appBar: TransAppBar.transAppBar(context),
            title: 'the movie',
            thumbNail:
                'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg',
            categories: 'Crime . Thraler',
            onAdd: () {},
            onInfo: () {},
            onPlay: () {},
          ),
        ),
      ),
    );
  }
}
