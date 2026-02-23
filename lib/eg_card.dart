//list with card, a better way to use card
//crossAxisAlignment is used to align the children of a Column or Row along the cross axis (perpendicular to the main axis). For a Column, the cross axis is horizontal, and for a Row, the cross axis is vertical. In this code, crossAxisAlignment: CrossAxisAlignment.stretch is used to make the children of the Column stretch to fill the available horizontal space.
//mainAxisAlignment is used to align the children of a Column or Row along the main axis (the direction in which the children are laid out).downward vertical for Column, horizontal for Row.
import 'package:flutter/material.dart';
import 'quote.dart';

void main() => runApp(MaterialApp(
  home: QuoteList(),
));

class QuoteList extends StatefulWidget {
  const QuoteList({super.key});

  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

  List<Quote> quotes = [
    Quote(author: 'Oscar Wilde', text: 'Be yourself; everyone else is already taken.'),
    Quote(author: 'Albert Einstein', text: 'I have nothing to declare except my genius.'),
    Quote(author: 'Oscar Wilde', text: 'The truth is rarely pure and never simple.'),
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
        children: quotes.map((quote) => QuoteCard(quote: quote)).toList(),
      ),
    );
  }
}

class QuoteCard extends StatelessWidget {
 final Quote quote;
 QuoteCard({required this.quote});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              quote.text,
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.grey[600],
              ),
            ),
            SizedBox(height: 6.0,),
            Text(
              quote.author,
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.grey[800],
              ),
            )
          ],
        ),
      ),
    );
  }
}