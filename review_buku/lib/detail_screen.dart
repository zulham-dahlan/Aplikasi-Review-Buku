import 'package:flutter/material.dart';
import 'package:review_buku/buku.dart';

class DetailScreen extends StatelessWidget{
  final Buku book ;

  DetailScreen({@required this.book});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(book.judulBuku),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Image.network(book.fotoBuku),
            ),
            Container(
              margin: EdgeInsets.only(left: 16.0,),
              child: Text(
                book.judulBuku,
                style: TextStyle(
                  fontSize: 32.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 16.0,),
              child: Text(
                book.penulisBuku,
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 16.0,top: 16.0,right: 16.0,bottom: 16.0,),
              child: Text(
                book.paragrafReview,
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
