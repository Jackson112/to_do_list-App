import 'package:flutter/material.dart';

void main() =>
  runApp(MaterialApp(
    home: QuoteList(),
  ));
class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<String> quote = [
    'Be aware of Life', 'Everyone is bad', 'We are we'
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
        children: [
          Text('$quote'),

        ],
      ),
    );
  }
}




