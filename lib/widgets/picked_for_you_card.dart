import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

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
