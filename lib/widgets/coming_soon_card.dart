import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class ComingSoonCard extends StatelessWidget {
  const ComingSoonCard({
    Key key,
    @required this.thumbNail,
    @required this.title,
    @required this.categories,
  }) : super(key: key);

  final String thumbNail;
  final String title;
  final String categories;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
      height: 120,
      width: 270,
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: CachedNetworkImage(
              width: double.infinity,
              height: 170,
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
          ),
          Positioned(
            left: 0,
            bottom: 0,
            right: 0,
            child: Container(
              child: Column(
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 17,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    categories,
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.white70,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
