import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

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
    Quote(author: 'Jackson', text:'My name is jackson'),
    Quote(author: 'Smart', text:'My name is Smart'),
    Quote(author: 'Cuthbert', text:'My name is Cuthbert'),
  ];
   Widget quoteTemplate(quote){
     return QuoteCard(quote: quote);
   }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       title: Text('My Todo List'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: quote.map((quote) => quoteTemplate(quote)).toList(),
      ),
    );
  }
}







