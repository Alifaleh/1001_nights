import 'package:flutter/material.dart';

// app bar
TextStyle actionsStyle = TextStyle(fontSize: 20);

class TransAppBar extends StatelessWidget {
  final double height;
  final List<Widget> actions;
  TransAppBar({this.actions, this.height});

  double get barHeight {
    return this.height;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Container(
          height: height,
          width: MediaQuery.of(context).size.width,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                flex: 2,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                  child: Image(
                    image: AssetImage('assets/images/splash_logo.png'),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(),
              ),
              Expanded(
                flex: 4,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: actions,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

// scaffold:

class MainScaffold extends StatelessWidget {
  const MainScaffold({Key key, this.appBar, this.body}) : super(key: key);

  final TransAppBar appBar;
  final Widget body;

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          width: screenSize.width,
          height: screenSize.height - MediaQuery.of(context).padding.top,
          child: body,
        ),
        appBar,
      ],
    );
  }
}
