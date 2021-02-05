import 'package:flutter/material.dart';

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
