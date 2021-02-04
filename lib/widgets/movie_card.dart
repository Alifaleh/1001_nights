import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

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
              color: Colors.blue,
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

class MovieCardPanal extends StatelessWidget {
  const MovieCardPanal({
    Key key,
    this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 10,
      left: 10,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 1),
        decoration: BoxDecoration(
          color: (title.length == 0)
              ? Color.fromRGBO(0, 0, 0, 0)
              : Color(0xff66bb6f),
          borderRadius: BorderRadius.circular(3),
        ),
        child: Text(
          title,
          style: TextStyle(
            fontSize: 10,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}

class MoviesSlider extends StatelessWidget {
  const MoviesSlider({
    Key key,
    @required this.children,
  }) : super(key: key);

  final List children;

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Container(
      height: 200,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'movies',
            style: TextStyle(
              fontSize: 15,
            ),
          ),
          Container(
            width: screenSize.width,
            height: 180,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (ctx, index) {
                return children[index];
              },
              itemCount: children.length,
            ),
          ),
        ],
      ),
    );
  }
}
