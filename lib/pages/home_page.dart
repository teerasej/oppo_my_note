// lib/pages/home_page.dart

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  List<String> listNotes = [
    'Tony Stark',
    'Steve Roger',
    'Peter Parker',
    'William Strange'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/new-note');
            },
            icon: Icon(Icons.add),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: listNotes.length,
        itemBuilder: (context, index) {
          var note = listNotes[index];

          if (index % 2 == 0) {
            return ListTile(
              title: Text(note),
              tileColor: Colors.amber[100],
            );
          } else {
            return ListTile(
              title: Text(note),
              tileColor: Colors.amber[400],
            );
          }
        },
      ),
    );
  }
}
