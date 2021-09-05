class Book {
  String title;
  String writer;
  String image;
  double rating;
  int price;

  Book(this.title, this.writer, this.image, this.rating, this.price);
}

final List<Book> books = [
  Book(
      'Book cover design', 'Jubilee Enterprise', 'assets/images/1.jpg', 3, 123),
  Book('Nora Barrett', 'Widada', 'assets/images/2.jpg', 4, 200),
  Book('Adobe InDesign', 'Jubilee Enterprise', 'assets/images/3.jpg', 5, 324),
  Book('Memory', 'Wahana Komputer', 'assets/images/4.jpg', 3, 200),
  Book('Edit this book', 'Dhani Ariatmanto', 'assets/images/5.jpg', 2, 234),
  Book('Modern spaces', 'Jubilee Enterprise', 'assets/images/6.jpg', 1, 240),
  Book('Adobe Premiere', 'Jubilee Enterprise', 'assets/images/7.jpg', 4, 432),
  Book('Google Sketchu', 'Wahana Komputer', 'assets/images/8.jpg', 4, 321),
  Book('Menguasai CSS', 'Wahana Komputer', 'assets/images/9.jpg', 5, 431),
  Book('Menguasai CSS 2', 'Wahana Komputer', 'assets/images/10.jpg', 2, 431),
  Book('Menguasai CSS 3', 'Wahana Komputer', 'assets/images/11.jpg', 3, 431),
  Book('Menguasai CSS 4', 'Wahana Komputer', 'assets/images/12.jpg', 3, 431)
];
