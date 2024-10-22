class ImmutableAuto {
  final int reifenAnzahl;
  final int insassenMax;
  final int insassenMin;
  final DateTime baujahr;
  final bool elektrisch;
  final String? fahrer;

  // Konstruktor mit benannten Parametern, einige sind erforderlich (required)
  const ImmutableAuto({
    required this.reifenAnzahl,
    required this.insassenMax,
    required this.insassenMin,
    required this.baujahr,
    required this.elektrisch,
    this.fahrer,
  });

  ImmutableAuto copyWith(
      {int? insassenMax,
      bool? elektrisch,
      int? insassenMin,
      int? reifenAnzahl,
      String? fahrer}) {
    //Validation
    if (insassenMin != null && insassenMin.isNegative)
      throw Exception('Insassen min darf nich negative sein');
    return ImmutableAuto(
      /* if(insassenMax==null){
        thisinsassenMax=this.insassenMax;
      }else{
        thisinsassenMax=insassenMax;
      }*/
      insassenMax: insassenMax ?? this.insassenMax,
      baujahr: baujahr,
      elektrisch: elektrisch ?? this.elektrisch,
      insassenMin: insassenMin ?? this.insassenMin,
      reifenAnzahl: reifenAnzahl ?? this.reifenAnzahl,
      fahrer: fahrer ?? this.fahrer,
    );
  }

 

  details() {
    print('''
     reifenAnzahl: $reifenAnzahl
     insassenMax: $insassenMax
     baujahr: $baujahr
     elektrisch: $elektrisch
     fahrer: $fahrer
       ''');
  }
}

class Auto {
  int reifenAnzahl;
  int insassenMax;
  int insassenMin;
  DateTime baujahr;
  bool elektrisch;
  String? fahrer;

  // Konstruktor mit benannten Parametern, einige sind erforderlich (required)
  Auto({
    this.reifenAnzahl = 4,
    required this.insassenMax,
    this.insassenMin = 1,
    required this.baujahr,
    required this.elektrisch,
    this.fahrer,
  });
}
