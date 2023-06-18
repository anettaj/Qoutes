import 'package:flutter/material.dart';
import 'package:Quotes/Qoute.dart';
import 'package:Quotes/QouteCard.dart';

void main() => runApp(MaterialApp(
  home: Qoutes(),
  debugShowCheckedModeBanner: false,
));

class Qoutes extends StatefulWidget {
  const Qoutes({Key? key}) : super(key: key);

  @override
  State<Qoutes> createState() => _QoutesState();
}

class _QoutesState extends State<Qoutes> {
  List<Qoute> quotes = [
    Qoute(
        text: 'The greatest glory in living lies not in never falling, but in rising every time we fall.',
        author: 'Nelson Mandela'),
    Qoute(
        text: "If you look at what you have in life, you'll always have more. If you look at what you don't have in life, you'll never have enough.",
        author: 'Oprah Winfrey'),
    Qoute(
        text: "Life is what happens when you're busy making other plans.",
        author: 'John Lennon'),
    Qoute(
        text: "Always remember that you are absolutely unique. Just like everyone else. ",
        author: 'Margaret Mead'),
    Qoute(
        text: "Tell me and I forget. Teach me and I remember. Involve me and I learn.",
        author: 'Benjamin Franklin'),
    Qoute(
        text: "It is during our darkest moments that we must focus to see the light.",
        author: 'Aristotle'),
    Qoute(
        text: "In the end, it's not the years in your life that count. It's the life in your years.",
        author: 'Abraham Lincoln'),
    Qoute(
        text: "Never let the fear of striking out keep you from playing the game.",
        author: 'Babe Ruth')

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Awesome Quotes'),
        centerTitle: true,
        backgroundColor: Colors.deepOrange[800],
      ),
      body: SingleChildScrollView(

        child: Column(

          children: quotes
              .map(
                (quote) => QouteCard(
              qoutes: quote,
              delete: () {
                setState(() {
                  quotes.remove(quote);
                });
              },
            ),
          ).toList(),
        ),
      ),

    );
  }
}
