import 'package:flutter/material.dart';
import 'quote.dart';

void main() => runApp(MaterialApp(
  home: QouteList(),
));

class QouteList extends StatefulWidget {
  const QouteList({Key? key}) : super(key: key);

  @override
  State<QouteList> createState() => _QouteListState();
}

class _QouteListState extends State<QouteList> {

  List<Quote> quotes = [
    Quote(author: 'Osca Wilde', text: 'I have nothing to declare except my genius'),
    Quote(author: 'Osca Wilde', text: 'The truth is rarely pure and never simple'),
    Quote(author: 'Osca Wilde', text: 'Be yourself; everybody is already taken')
  ];

  Widget quoteTemplete(quote){
    return Card(
      margin: EdgeInsets.all(16),
      child: Padding(
        padding: EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget> [
            Text(
              quote.text,
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey[600],
              ),
            ),
            SizedBox(height: 6),
            Text(
              quote.author,
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey[800],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('Awesome Quotes'),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Column (
        children: quotes.map((quote) => quoteTemplete(quote)).toList(),
      ),
    );
  }
}


