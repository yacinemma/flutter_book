class Book {
  String title;
  String writer;
  String image;
  double rating;
  int price;

  Book(this.title, this.writer, this.image, this.rating, this.price);
}

final List<Book> books = [
  Book('CorelDraw untuk Tingkat Pemula Sampai Mahir', 'Jubilee Enterprise',
      'assets/images/empty.jpg', 3.5, 123),
  Book('Buku Pintar Drafter Untuk Pemula Hingga Mahir', 'Widada',
      'assets/images/empty.jpg', 4.5, 200),
  Book('Adobe InDesign: Seri Panduan Terlengkap', 'Jubilee Enterprise',
      'assets/images/empty.jpg', 5.0, 324),
  Book('Pemodelan Objek Dengan 3Ds Max 2014', 'Wahana Komputer',
      'assets/images/empty.jpg', 3.0, 200),
  Book('Penerapan Visualisasi 3D Dengan Autodesk Maya', 'Dhani Ariatmanto',
      'assets/images/empty.jpg', 4.8, 234),
  Book('Teknik Lancar Menggunakan Adobe Photoshop', 'Jubilee Enterprise',
      'assets/images/empty.jpg', 4.5, 240),
  Book('Adobe Premiere Terlengkap dan Termudah', 'Jubilee Enterprise',
      'assets/images/empty.jpg', 4.8, 432),
  Book('Cad Series : Google Sketchup Untuk Desain 3D', 'Wahana Komputer',
      'assets/images/empty.jpg', 4.5, 321),
  Book('Webmaster Series : Trik Cepat Menguasai CSS', 'Wahana Komputer',
      'assets/images/empty.jpg', 3.5, 431)
];
