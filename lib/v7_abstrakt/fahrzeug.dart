import 'package:oop_tutorial/v4_assoziation/fahrer.dart';

 abstract class AbstractFahrzeug {
  int reifenAnzahl;
  double reifenBreite;
  double reifenRadius;
  int insassenMax;
  int insassenMin;
  DateTime baujahr;
  bool elektrisch;
  Fahrer? fahrer;
  AbstractFahrzeug({
    required this.reifenAnzahl,
    required this.baujahr,
    required this.elektrisch,
    this.fahrer,
    required this.reifenBreite,
    required this.insassenMax,
    required this.insassenMin,
    required this.reifenRadius,
  });

  fahren(int kilomter);
// Abstrack Methode
  tanken();

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
