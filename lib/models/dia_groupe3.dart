class BacDia {
  String nomGroupePedagogique;
  int idSection;
  String codeSection;
  String nomSection;
  int refGroupeId;
  DateTime dateAffectation;
  DateTime dateNaissanceEtudiant;
  double moyenneBac;
  double lastMoyenne;
  int periodeId;
  String periodeCode;
  String periodeLibelleLongLt;

  BacDia({
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
