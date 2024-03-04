import 'dart:ffi';

class BacDia {
  final Long idd;
  final Long dossierInscriptionId;
  final Long dossierEtudiantId;
  final Long individuId;
  final String individuIdentifiant;
  final String nomEtudiant;
  final String prenomEtudiant;
  final String nomEtudiantArabe;
  final String prenomEtudiantArabe;
  final String numeroMatricule;
  final String numeroInscription;
  final String etudiantCivilite;
  final String urlPhoto;
  final String etudiantSexe;
  final Long groupePedagogiqueId;
  final String codeGroupePedagogique;
  final String nomGroupePedagogique;
  final int idSection;
  final String codeSection;
  final String nomSection;
  final int refGroupeId;
  final DateTime dateAffectation;
  final DateTime dateNaissanceEtudiant;
  final double moyenneBac;
  final double lastMoyenne;
  final int periodeId;
  final String periodeCode;
  final String periodeLibelleLongLt;

  BacDia({
    required..idd,
    required.this.dossierInscriptionId,
    required.this.dossierEtudiantId,
    required.this.individuI,
    required.this.individuIdentifiant,
    required.this.nomEtudiant,
    required.this.prenomEtudiant,
    required.this.nomEtudiantArabe,
    required.this.prenomEtudiantArabe,
    required.this.numeroMatricule,
    required.this.numeroInscription,
    required.this.etudiantCivilite,
    required.this.urlPhoto,
    required.this.etudiantSexe,
    required.this.groupePedagogiqueId,
    required.this.codeGroupePedagogique,


    required this.nomGroupePedagogique,
    required this.idSection,
    required this.codeSection,
    required this.nomSection,
    required this.refGroupeId,
    required this.dateAffectation,
    required this.dateNaissanceEtudiant,
    required this.moyenneBac,
    required this.lastMoyenne,
    required this.periodeId,
    required this.periodeCode,
    required this.periodeLibelleLongLt,
  });

  factory BacDia.fromJson(Map<String, dynamic> json) {
    return BacDia(
      nomGroupePedagogique: json['nomGroupePedagogique'],
      idSection: json['idSection'],
      codeSection: json['codeSection'],
      nomSection: json['nomSection'],
      refGroupeId: json['refGroupeId'],
      dateAffectation: DateTime.parse(json['dateAffectation']),
      dateNaissanceEtudiant: DateTime.parse(json['dateNaissanceEtudiant']),
      moyenneBac: json['moyenneBac'],
      lastMoyenne: json['lastMoyenne'],
      periodeId: json['periodeId'],
      periodeCode: json['periodeCode'],
      periodeLibelleLongLt: json['periodeLibelleLongLt'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {
      'nomGroupePedagogique': nomGroupePedagogique,
      'idSection': idSection,
      'codeSection': codeSection,
      'nomSection': nomSection,
      'refGroupeId': refGroupeId,
      'dateAffectation': dateAffectation.toIso8601String(),
      'dateNaissanceEtudiant': dateNaissanceEtudiant.toIso8601String(),
      'moyenneBac': moyenneBac,
      'lastMoyenne': lastMoyenne,
      'periodeId': periodeId,
      'periodeCode': periodeCode,
      'periodeLibelleLongLt': periodeLibelleLongLt,
    };
    return data;
  }
}
