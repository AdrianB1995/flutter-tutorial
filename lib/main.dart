import 'package:flutter/material.dart';
import 'Quote.dart';
import 'QuoteCard.dart';

void main() => runApp(MaterialApp(
  home: QuoteList(),
));

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

  List<Quote> list = [
    Quote(author: 'Adrian Borrego', text: 'You only get one chance in life!'),
    Quote(author: 'Adrian Borrego', text: 'Never stop pushing for a better future!'),
    Quote(author: 'Adrian Borrego', text: 'Never forget where you came from!'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Awesome Quotes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: list.map((quote) => QuoteCard(quote: quote)).toList(),
      ),
    );
  }
}

