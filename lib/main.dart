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

class QuoteCard extends StatelessWidget {
  final Quote quote;
  QuoteCard({ this.quote });

  @override
  Widget build(BuildContext context) {
    return Card (
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch ,
          children:<Widget> [
            Text(
              quote.text,
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.grey[600]
              ),
            ),
            SizedBox(height: 6.0),
            Text(
              quote.author,
              style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.grey[800]

              ),
            ),
          ],
        ),
      ),
    );
  }
}




