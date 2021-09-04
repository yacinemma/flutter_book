import 'package:flutter/material.dart';
import 'package:flutter_book/models/Book.dart';
import 'package:flutter_book/widgets/BookWidget.dart';

class ListBookScreen extends StatefulWidget {
  ListBookScreen({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _ListBookScreenState createState() => _ListBookScreenState();
}

class _ListBookScreenState extends State<ListBookScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: .5,
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {},
        ),
        title: Text(widget.title),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          )
        ],
      ),
      body: CustomScrollView(
        primary: false,
        slivers: <Widget>[
          SliverPadding(
            padding: EdgeInsets.all(16.0),
            sliver: SliverGrid.count(
              childAspectRatio: 2 / 3,
              crossAxisCount: 3,
              mainAxisSpacing: 20.0,
              crossAxisSpacing: 20.0,
              children: books.map((book) => createTile(book, context)).toList(),
            ),
          )
        ],
      ),
    );
  }
}
