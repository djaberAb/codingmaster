import 'package:codingmaster/models/bac_note1.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';


Future<List<BacNote>> fetchBacNotes(String uuid) async {
  final response = await http.get(Uri.parse('https://progres.mesrs.dz/api/infos/bac/$uuid/notes'));

  if (response.statusCode == 200) {
    final List<dynamic> responseData = json.decode(response.body);

    return responseData.map((noteJson) => BacNote.fromJson(noteJson)).toList();
  } else {
    throw Exception('Failed to load bac notes');
  }
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bac Notes Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BacNotesScreen(),
    );
  }
}

class BacNotesScreen extends StatefulWidget {
  @override
  _BacNotesScreenState createState() => _BacNotesScreenState();
}

class _BacNotesScreenState extends State<BacNotesScreen> {
  late Future<List<BacNote>> _bacNotesFuture;

  @override
  void initState() {
    super.initState();
    _bacNotesFuture = fetchBacNotes('868b3632-21e4-443a-93aa-675aed543889');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bac Notes'),
      ),
      body: Center(
        child: FutureBuilder<List<BacNote>>(
          future: _bacNotesFuture,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return CircularProgressIndicator();
            } else if (snapshot.hasError) {
              return Text('Error: ${snapshot.error}');
            } else {
              final List<BacNote> notes = snapshot.data!;
              return ListView.builder(
                itemCount: notes.length,
                itemBuilder: (context, index) {
                  final BacNote note = notes[index];
                  return ListTile(
                    title: Text('${note.refCodeMatiereLibelleFr}: ${note.note}'),
                    subtitle: Text('Year: ${note.anneeBac}'),
                    // You can add more details to display if needed
                  );
                },
              );
            }
          },
        ),
      ),
    );
  }
}
