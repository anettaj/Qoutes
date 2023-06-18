import 'package:flutter/material.dart';
import 'package:Quotes/Qoute.dart';

class QouteCard extends StatelessWidget {
  final Qoute qoutes;
  final VoidCallback delete;

  QouteCard({required this.qoutes, required this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              qoutes.text,
              style: TextStyle(
                fontSize: 15.0,
                color: Colors.black,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.0,
              ),
            ),
            SizedBox(height: 6.0,),
            Text(
              qoutes.author,
              style: TextStyle(
                fontSize: 13.0,
                color: Colors.grey[800],
              ),
            ),
            SizedBox(height: 8.0,),
            TextButton.icon(
              onPressed:delete,
              label: Text('Delete'),
              icon: Icon(Icons.delete),
            ),
          ],
        ),
      ),
    );
  }
}
