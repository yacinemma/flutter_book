import 'package:flutter/material.dart';
import 'package:flutter_book/models/Book.dart';

Widget createTile(Book book, context) {
  return Hero(
    tag: book.title,
    child: Material(
      elevation: 15.0,
      shadowColor: Colors.yellow.shade900,
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, 'detail/${book.title}');
        },
        child: Image(
          image: AssetImage(book.image),
          fit: BoxFit.cover,
        ),
      ),
    ),
  );
}

///create text widget
Widget text(String data,
    {Color color = Colors.black87,
    num size = 14,
    EdgeInsetsGeometry padding = EdgeInsets.zero,
    bool isBold = false}) {
  return Padding(
    padding: padding,
    child: Text(
      data,
      style: TextStyle(
          color: color,
          fontSize: size.toDouble(),
          fontWeight: isBold ? FontWeight.bold : FontWeight.normal),
    ),
  );
}

Widget StarRating(rating) {
  return Row(
    children: <Widget>[
      Text(
        'Rate: ',
        style: TextStyle(
          color: Colors.grey,
          fontSize: 18,
          letterSpacing: 0.6,
          wordSpacing: 0.6,
        ),
      ),
      Icon(
        Icons.star,
        color: rating >= 1 ? Color(0xffFFCE00) : Color(0xffBDC3C7),
        size: 18,
      ),
      Icon(
        Icons.star,
        color: rating >= 2 ? Color(0xffFFCE00) : Color(0xffBDC3C7),
        size: 18,
      ),
      Icon(
        Icons.star,
        color: rating >= 3 ? Color(0xffFFCE00) : Color(0xffBDC3C7),
        size: 18,
      ),
      Icon(
        Icons.star,
        color: rating >= 4 ? Color(0xffFFCE00) : Color(0xffBDC3C7),
        size: 18,
      ),
      Icon(
        Icons.star,
        color: rating == 5 ? Color(0xffFFCE00) : Color(0xffBDC3C7),
        size: 18,
      ),
      Text(
        '   (' + rating.toString() + '/5) ',
        style: TextStyle(
          color: Colors.grey,
          fontSize: 18,
          letterSpacing: 0.6,
          wordSpacing: 0.6,
        ),
      )
    ],
  );
}

Widget SingleBookTile(title, price, image) {
  return Container(
    width: 110,
    padding: EdgeInsets.only(right: 12),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Image.asset(
          image,
          height: 170,
          fit: BoxFit.fitHeight,
        ),
        Text(
          title,
          style: TextStyle(
              color: Colors.black87, fontWeight: FontWeight.w500, fontSize: 14),
        ),
        Text(
          price.toString() + ' DA',
          style: TextStyle(color: Colors.blue[200], fontSize: 13),
        )
      ],
    ),
  );
}
