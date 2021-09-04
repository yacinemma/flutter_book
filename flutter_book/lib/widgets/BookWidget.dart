import 'package:flutter/material.dart';
import 'package:flutter_book/models/Book.dart';

Widget createTile(Book book) {
  return Hero(
    tag: book.title,
    child: Material(
      elevation: 15.0,
      shadowColor: Colors.yellow.shade900,
      child: InkWell(
        onTap: () {
          //Navigator.pushNamed(context, 'detail/${book.title}');
        },
        child: Image(
          image: AssetImage(book.image),
          fit: BoxFit.cover,
        ),
      ),
    ),
  );
}
