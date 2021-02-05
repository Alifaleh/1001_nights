import 'package:flutter/material.dart';

class ComingSoonSlider extends StatelessWidget {
  const ComingSoonSlider({
    Key key,
    @required this.children,
    this.title = '',
  }) : super(key: key);

  final List children;
  final String title;

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Container(
      height: 250,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 15,
            ),
          ),
          Container(
            width: screenSize.width,
            height: 220,
            child: Center(
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (ctx, index) {
                  return children[index];
                },
                itemCount: children.length,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
