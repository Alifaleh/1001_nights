import 'package:flutter/material.dart';

class StoriesSlider extends StatelessWidget {
  const StoriesSlider({
    Key key,
    @required this.children,
  }) : super(key: key);

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Container(
      height: 140,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Stories',
            style: TextStyle(
              fontSize: 15,
            ),
          ),
          Container(
            width: screenSize.width,
            height: 120,
            child: Center(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (ctx, index) {
                  return children[index];
                },
                itemCount: children.length,
                shrinkWrap: true,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
