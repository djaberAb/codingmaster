class bac_Info {
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

  bac_Info({
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

  factory bac_Info.fromJson(Map<String, dynamic> json) {
    return bac_Info(
      id: json['Id'],
      nin: json['Nin'],
      matricule: json['Matricule'],
      nomAr: json['nomAr'],
      prenomAr: json['prenomAr'],
      nomFr: json['nomFr'],
      prenomFr: json['prenomFr'],
      dateNaissance: DateTime.parse(json['dateNaissance']),
      moyenneBac: json['moyenneBac'],
      prenomPere: json['prenomPere'],
      nomPrenomMere: json['nomPrenomMere'],
      telephone: json['Telephone'],
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

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['Id'] = id;
    data['Nin'] = nin;
    data['Matricule'] = matricule;
    data['nomAr'] = nomAr;
    data['prenomAr'] = prenomAr;
    data['nomFr'] = nomFr;
    data['prenomFr'] = prenomFr;
    data['dateNaissance'] = dateNaissance.toIso8601String();
    data['moyenneBac'] = moyenneBac;
    data['prenomPere'] = prenomPere;
    data['nomPrenomMere'] = nomPrenomMere;
    data['Telephone'] = telephone;
    data['adresseResidence'] = adresseResidence;
    data['refCodeSexe'] = refCodeSexe;
    data['refCodeWilayaNaissance'] = refCodeWilayaNaissance;
    data['refCodeWilayaBac'] = refCodeWilayaBac;
    data['refCodeWilayaResidence'] = refCodeWilayaResidence;
    data['refCodeSerieBac'] = refCodeSerieBac;
    data['libelleVilleNaissance'] = libelleVilleNaissance;
    data['libelleSerieBac'] = libelleSerieBac;
    return data;
  }
}
