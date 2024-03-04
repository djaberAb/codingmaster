import 'package:http/http.dart' as http;
import 'dart:convert';

class BacNote {
  final String matriculeBac;
  final double note;
  final String refCodeMatiere;
  final String refCodeMatiereLibelleFr;
  final String anneeBac;

  BacNote({
    required this.matriculeBac,
    required this.note,
    required this.refCodeMatiere,
    required this.refCodeMatiereLibelleFr,
    required this.anneeBac,
  });

  factory BacNote.fromJson(Map<String, dynamic> json) {
    return BacNote(
      matriculeBac: json['matriculeBac'],
      note: json['note'].toDouble(),
      refCodeMatiere: json['refCodeMatiere'],
      refCodeMatiereLibelleFr: json['refCodeMatiereLibelleFr'],
      anneeBac: json['anneeBac'],
    );
  }
}

Future<List<BacNote>> fetchBacNotes(String uuid) async {
  final response = await http.get(Uri.parse('https://progres.mesrs.dz/api/infos/bac/$uuid/notes'));

  if (response.statusCode == 200) {
    final List<dynamic> responseData = json.decode(response.body);
    return responseData.map((noteJson) => BacNote.fromJson(noteJson)).toList();
  } else {
    throw Exception('Failed to load bac notes');
  }
}
