import 'package:flutter/material.dart';
import 'screens/apiONE/bac_note_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Home Page',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BacNotesScreen(),
    );
  }
}
