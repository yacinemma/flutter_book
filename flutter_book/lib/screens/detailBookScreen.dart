import 'package:flutter/material.dart';
import 'package:flutter_book/models/Book.dart';
import 'package:flutter_book/widgets/BookWidget.dart';

class DetailBookScreen extends StatefulWidget {
  final Book book;

  DetailBookScreen(this.book);

  @override
  _DetailBookScreenState createState() => _DetailBookScreenState();
}

class _DetailBookScreenState extends State<DetailBookScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: .5,
        title: Text('Books Detail'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            //Book cover
            Image.asset(
              widget.book.image,
              width: MediaQuery.of(context).size.width,
              height: 300,
              fit: BoxFit.fill,
            ),
            //Book cover
            Container(
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 20),
              child: Column(
                children: <Widget>[
                  //Title & Price
                  Row(
                    children: <Widget>[
                      Text(
                        widget.book.title,
                        style: TextStyle(
                            color: Colors.black87,
                            fontWeight: FontWeight.w700,
                            fontSize: 21),
                      ),
                      Spacer(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          //StarRating(rating: 5,),
                          SizedBox(
                            height: 6,
                          ),
                          Text(
                            widget.book.price.toString() + ' DA',
                            style: TextStyle(
                              color: Colors.blue[200],
                              fontSize: 18,
                              fontWeight: FontWeight.w900,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  //Title & Price
                  SizedBox(
                    height: 10,
                  ),
                  //Writer
                  Container(
                    width: double.infinity,
                    child: Text(
                      'By ' + widget.book.writer,
                    ),
                  ),
                  //Writer
                  SizedBox(
                    height: 30,
                  ),
                  //Description
                  Text(
                    "Description : Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum id neque libero. Donec finibus sem viverra, luctus nisi ac, semper enim. Vestibulum in mi feugiat, mattis erat suscipit, fermentum quam. Mauris non urna sed odio congue rhoncus. \nAliquam a dignissim ex. Suspendisse et sem porta, consequat dui et.",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18,
                      letterSpacing: 0.6,
                      wordSpacing: 0.6,
                    ),
                  ),
                  //Description
                  SizedBox(
                    height: 10,
                  ),
                  //StarRating
                  Container(
                    width: double.infinity,
                    child: StarRating(widget.book.rating),
                  ),
                  //StarRating
                  SizedBox(
                    height: 30,
                  ),
                  // Btn Buy
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Container(
                        width: 200,
                        alignment: Alignment.center,
                        padding: EdgeInsets.symmetric(vertical: 18),
                        decoration: BoxDecoration(
                            color: Colors.blue[200],
                            borderRadius: BorderRadius.circular(12)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "BUY NOW ",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600),
                            ),
                            Icon(
                              Icons.shopping_cart,
                              size: 22,
                              color: Colors.white,
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                    ],
                  ),
                  // Btn Buy
                  SizedBox(
                    height: 20,
                  ),
                  // More widget
                  Container(
                    width: double.infinity,
                    child: RichText(
                      text: TextSpan(
                        text: 'More from ',
                        style: TextStyle(
                            color: Colors.black87,
                            fontSize: 18,
                            fontWeight: FontWeight.w500),
                        children: <TextSpan>[
                          TextSpan(
                              text: widget.book.writer,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.blue[200],
                              )),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 250,
                    child: ListView.builder(
                        itemCount: books.length,
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        physics: ClampingScrollPhysics(),
                        itemBuilder: (context, index) {
                          return SingleBookTile(books[index].title,
                              books[index].price, books[index].image, context);
                        }),
                  )
                  // More widget
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
