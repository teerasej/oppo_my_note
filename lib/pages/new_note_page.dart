// lib/pages/new_note_page.dart

import 'package:flutter/material.dart';

class NewNotePage extends StatelessWidget {
  NewNotePage({Key? key}) : super(key: key);

  final formKey = GlobalKey<FormState>();
  String? note = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('New Note'),
      ),
      body: Form(
        key: formKey,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Note:'),
              TextFormField(
                onSaved: (newValue) {
                  note = newValue;
                },
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'กรุณากรอกข้อความ';
                  }
                  return null; // undefined
                },
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: ElevatedButton(
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      formKey.currentState!.save();
                      print('form: $note');
                      Navigator.pop(context);
                    }
                  },
                  child: Text('Save'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
