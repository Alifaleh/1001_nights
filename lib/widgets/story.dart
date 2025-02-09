import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class StorieHolder extends StatelessWidget {
  const StorieHolder({
    Key key,
    @required this.thumbNail,
    @required this.onTap,
  }) : super(key: key);

  final onTap;
  final String thumbNail;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.all(10),
        width: 100,
        height: 100,
        child: Stack(
          children: [
            Center(
              child: Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Theme.of(context).indicatorColor,
                      Theme.of(context).accentColor,
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
            ),
            Center(
              child: Container(
                width: 90,
                height: 90,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
            ),
            Center(
              child: Container(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: CachedNetworkImage(
                    width: 80,
                    height: 80,
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
              ),
            )
          ],
        ),
      ),
    );
  }
}
