import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

import './movie_card_panal.dart';

class MovieCard extends StatelessWidget {
  const MovieCard({
    Key key,
    @required this.thumbNail,
    @required this.onTap,
    this.movieCardPanal = const MovieCardPanal(
      title: '',
    ),
  }) : super(key: key);

  final String thumbNail;
  final onTap;
  final MovieCardPanal movieCardPanal;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: GestureDetector(
        onTap: onTap,
        child: Stack(
          children: [
            Container(
              height: 180,
              width: 120,
              child: CachedNetworkImage(
                width: double.infinity,
                height: double.infinity,
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
            movieCardPanal,
          ],
        ),
      ),
    );
  }
}
