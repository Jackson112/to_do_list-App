import 'package:flutter/material.dart';
import 'quote.dart';

void main() =>
  runApp(MaterialApp(
    home: QuoteList(),
  ));
class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quote = [
    Quote(author: 'jackson', text:'My name is jackson'),
    Quote(author: 'Smart', text:'My name is Smart'),
    Quote(author: 'Cuthbert', text:'My name is Cuthbert'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       title: Text('My Todo List'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: quote.map((quote) => Text('${quote.text} - ${quote.author}')).toList(),
      ),
    );
  }
}




