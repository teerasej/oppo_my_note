import 'package:flutter/material.dart';

class NoteProvider extends ChangeNotifier {
  List<String> listNotes = [
    'Tony Stark',
    'Steve Roger',
    'Peter Parker',
    'William Strange'
  ];

  void addNote(String message) {
    listNotes.add(message);
    notifyListeners();
  }
}
