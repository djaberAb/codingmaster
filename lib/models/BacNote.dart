class bac_Note {
  String matriculeBac;
  double note;
  String refCodeMatiere;
  String refCodeMatiereLibelleFr;
  String anneeBac;

  bac_Note({
    required this.matriculeBac,
    required this.note,
    required this.refCodeMatiere,
    required this.refCodeMatiereLibelleFr,
    required this.anneeBac,
  });

  factory bac_Note.fromJson(Map<String, dynamic> json) {
    return bac_Note(
      matriculeBac: json['matriculeBac'],
      note: json['note'],
      refCodeMatiere: json['refCodeMatiere'],
      refCodeMatiereLibelleFr: json['refCodeMatiereLibelleFr'],
      anneeBac: json['anneeBac'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['matriculeBac'] = matriculeBac;
    data['note'] = note;
    data['refCodeMatiere'] = refCodeMatiere;
    data['refCodeMatiereLibelleFr'] = refCodeMatiereLibelleFr;
    data['anneeBac'] = anneeBac;
    return data;
  }
}
