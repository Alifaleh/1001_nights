import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class LandingShow extends StatelessWidget {
  const LandingShow(
      {Key key,
      @required this.thumbNail,
      @required this.title,
      @required this.categories,
      @required this.onPlay,
      @required this.onAdd,
      @required this.onInfo})
      : super(key: key);

  final String thumbNail;
  final String title;
  final String categories;
  final onPlay;
  final onAdd;
  final onInfo;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
      child: Column(
        children: [
          Stack(
            children: [
              CachedNetworkImage(
                width: double.infinity,
                height: screenWidth / 1.9,
                fit: BoxFit.cover,
                imageUrl: thumbNail,
                placeholder: (context, url) => Container(
                  width: 40,
                  height: 40,
                  child: Stack(
                    children: [
                      Center(
                        child: CircularProgressIndicator(),
                      ),
                    ],
                  ),
                ),
                errorWidget: (context, url, error) => Icon(Icons.error),
              ),
              Column(
                children: [
                  Container(
                    height: screenWidth / 2.5,
                  ),
                  Center(
                    child: Text(title),
                  ),
                ],
              ),
            ],
          ),
          Container(
            height: 130,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  categories,
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white70,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                      onTap: onAdd,
                      child: Icon(
                        Icons.add,
                        color: Theme.of(context).indicatorColor,
                        size: 60,
                      ),
                    ),
                    GestureDetector(
                      onTap: onPlay,
                      child: Container(
                        width: 75,
                        height: 75,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Theme.of(context).accentColor,
                        ),
                        child: Center(
                          child: Icon(
                            Icons.play_arrow_rounded,
                            color: Colors.white,
                            size: 60,
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: onInfo,
                      child: Icon(
                        Icons.info_outline,
                        color: Theme.of(context).indicatorColor,
                        size: 60,
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
