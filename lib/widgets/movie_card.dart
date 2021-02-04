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
    this.title = '',
  }) : super(key: key);

  final List children;
  final String title;

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
            title,
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

class PickedForYouCard extends StatelessWidget {
  const PickedForYouCard({
    Key key,
    @required this.movieName,
    @required this.onAdd,
    @required this.onPlay,
    @required this.stars,
    @required this.thumbNail,
    @required this.time,
    @required this.title,
    @required this.year,
  }) : super(key: key);

  final String title;
  final String thumbNail;
  final String movieName;
  final String time;
  final String stars;
  final String year;
  final onPlay;
  final onAdd;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 0, vertical: 20),
      width: double.infinity,
      height: 300,
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
          Stack(
            children: [
              Container(
                width: double.infinity,
                height: 280,
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
                bottom: 10,
                left: 10,
                right: 10,
                child: Container(
                  height: 90,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            movieName,
                            style: TextStyle(
                              fontSize: 25,
                            ),
                          ),
                          Container(
                            width: 200,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  '$time min',
                                  style: TextStyle(
                                    fontSize: 15,
                                  ),
                                ),
                                Container(
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: Colors.blue,
                                        size: 18,
                                      ),
                                      Text(
                                        stars,
                                        style: TextStyle(
                                          fontSize: 15,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Text(
                                  year,
                                  style: TextStyle(
                                    fontSize: 15,
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 1,
                          )
                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(
                            height: 30,
                          ),
                          Row(
                            children: [
                              GestureDetector(
                                onTap: onPlay,
                                child: Container(
                                  width: 50,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    color: Theme.of(context).accentColor,
                                  ),
                                  child: Center(
                                    child: Icon(
                                      Icons.play_arrow_rounded,
                                      color: Colors.white,
                                      size: 30,
                                    ),
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: onAdd,
                                child: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                  size: 50,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
