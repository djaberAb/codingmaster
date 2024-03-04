import 'package:http/http.dart' as http;
import 'dart:convert';

class BaccalaureateDossier {
  final int id;
  final String nin;
  final double matricule;
  final String nomAr;
  final String prenomAr;
  final String nomFr;
  final String prenomFr;
  final DateTime dateNaissance;
  final String moyenneBac;
  final String prenomPere;
  final String nomPrenomMere;
  final String telephone;
  final String adresseResidence;
  final String refCodeSexe;
  final String refCodeWilayaNaissance;
  final String refCodeWilayaBac;
  final String refCodeWilayaResidence;
  final String refCodeSerieBac;
  final String libelleVilleNaissance;
  final String libelleSerieBac;

  BaccalaureateDossier({
    required this.id,
    required this.nin,
    required this.matricule,
    required this.nomAr,
    required this.prenomAr,
    required this.nomFr,
    required this.prenomFr,
    required this.dateNaissance,
    required this.moyenneBac,
    required this.prenomPere,
    required this.nomPrenomMere,
    required this.telephone,
    required this.adresseResidence,
    required this.refCodeSexe,
    required this.refCodeWilayaNaissance,
    required this.refCodeWilayaBac,
    required this.refCodeWilayaResidence,
    required this.refCodeSerieBac,
    required this.libelleVilleNaissance,
    required this.libelleSerieBac,
  });

  factory BaccalaureateDossier.fromJson(Map<String, dynamic> json) {
    return BaccalaureateDossier(
      id: json['id'],
      nin: json['nin'],
      matricule: json['matricule'],
      nomAr: json['nomAr'],
      prenomAr: json['prenomAr'],
      nomFr: json['nomFr'],
      prenomFr: json['prenomFr'],
      dateNaissance: DateTime.parse(json['dateNaissance']),
      moyenneBac: json['moyenneBac'],
      prenomPere: json['prenomPere'],
      nomPrenomMere: json['nomPrenomMere'],
      telephone: json['telephone'],
      adresseResidence: json['adresseResidence'],
      refCodeSexe: json['refCodeSexe'],
      refCodeWilayaNaissance: json['refCodeWilayaNaissance'],
      refCodeWilayaBac: json['refCodeWilayaBac'],
      refCodeWilayaResidence: json['refCodeWilayaResidence'],
      refCodeSerieBac: json['refCodeSerieBac'],
      libelleVilleNaissance: json['libelleVilleNaissance'],
      libelleSerieBac: json['libelleSerieBac'],
    );
  }
}

Future<BaccalaureateDossier> fetchBaccalaureateDossier(String uuid) async {
  final response = await http.get(Uri.parse('https://progres.mesrs.dz/api/infos/bac/$uuid/'));

  if (response.statusCode == 200) {
    final responseData = json.decode(response.body);
    return BaccalaureateDossier.fromJson(responseData);
  } else {
    throw Exception('Failed to load baccalaureate dossier');
  }
}
