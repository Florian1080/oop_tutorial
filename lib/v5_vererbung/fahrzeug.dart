import 'package:oop_tutorial/v4_assoziation/fahrer.dart';

class Fahrzeug {
  int reifenAnzahl;
  double reifenBreite;
  double reifenRadius;
  int insassenMax;
  int insassenMin;
  DateTime baujahr;
  bool elektrisch;
  Fahrer? fahrer;
  Fahrzeug({
    required this.reifenAnzahl,
    required this.baujahr,
    required this.elektrisch,
    this.fahrer,
    required this.reifenBreite,
    required this.insassenMax,
    required this.insassenMin,
    required this.reifenRadius,
  });

  fahren() {
    print('Fahrzeug fährt');
  }

  tanken() {
    print('Fahrzeug wird getankt');
  }
    details() {
    print('''
     reifenAnzahl: $reifenAnzahl
     insassenMax: $insassenMax
     insassenMin: $insassenMin
     baujahr: $baujahr
     elektrisch: $elektrisch
     fahrer: $fahrer
       ''');
  }

}
