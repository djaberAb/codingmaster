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
