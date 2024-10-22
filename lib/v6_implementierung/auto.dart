import 'package:oop_tutorial/v4_assoziation/fahrer.dart';
import 'package:oop_tutorial/v5_vererbung/fahrzeug.dart';

class V6Auto implements Fahrzeug, Schiff {
  int reifenAnzahl;
  double reifenBreite;
  double reifenRadius;
  int insassenMax;
  int insassenMin;
  DateTime baujahr;
  bool elektrisch;
  Fahrer? fahrer;
  V6Auto({
    required this.reifenAnzahl,
    required this.baujahr,
    required this.elektrisch,
    this.fahrer,
    required this.reifenBreite,
    required this.insassenMax,
    required this.insassenMin,
    required this.reifenRadius,
  });
  @override
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

  @override
  fahren() {
    print('Auto fährt');
  }

  @override
  tanken() {
    print('Auto wird getankt');
  }
  @override
  schwimmen() {
    print('Auto kann schwimmen');
  }
  halten(){
    print('auto haltet');
  }
}

//#########################################################
class Schiff{
  schwimmen(){
    print('Schiff kann schwimmen');
  }
}