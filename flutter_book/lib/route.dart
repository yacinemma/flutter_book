import 'package:flutter/material.dart';
import 'package:flutter_book/screens/detailBookScreen.dart';

import 'models/Book.dart';

///Generate parameterized route --> e.g: detail/some book title
generateRoute(RouteSettings settings) {
  final path = settings.name.split('/');
  final title = path[1];

  Book book = books.firstWhere((it) => it.title == title);
  return MaterialPageRoute(
    settings: settings,
    builder: (context) => DetailBookScreen(book),
  );
}
