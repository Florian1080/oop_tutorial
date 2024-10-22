import 'package:oop_tutorial/v4_assoziation/fahrer.dart';
import 'package:oop_tutorial/v4_assoziation/reifen.dart';

class AutoClassV4 {
  static const String material = 'Metal';

  int reifenAnzahl;
  double reifenBreite;
  double reifenRadius;
  int insassenMax;
  int _insassenMin;
  DateTime _baujahr;
  bool elektrisch;
  Fahrer? fahrer;

  AutoClassV4({
    this.reifenAnzahl = 4,
    required this.insassenMax,
    int insassenMin = 1,
    required DateTime baujahr,
    required this.elektrisch,
    this.reifenBreite=18,
    this.reifenRadius=28,
    this.fahrer,
  })  : _insassenMin = insassenMin,
        _baujahr = baujahr {
    if (baujahr.year < 1900) {
      _baujahr = DateTime(1900);
    }
    if (baujahr.year > DateTime.now().year) {
      _baujahr = DateTime(DateTime.now().year);
    }
  }

  set insassenMin(int num) {
    if (num > insassenMax) {
      num = insassenMax;
    }
    if (num < 0) {
      num = 0;
    }
    _insassenMin = num;
  }

  int get alter {
    return DateTime.now().year - _baujahr.year;
  }

  int get insassenMin {
    return _insassenMin;
  }

  DateTime get baujahr {
    return _baujahr;
  }

  Reifen get reifen {
    return Reifen(reifenAnzahl: reifenAnzahl, reifenBreite: reifenBreite, reifenRadius: reifenRadius);
  }

  fahren() {
    if (fahrer != null && reifenAnzahl == 4) {
      print('Auto fährt');
      return;
    }
    print('auto kann nicht fahren');
  }

  anhalten() {
    if (fahrer != null) {
      print('auto kann anhalten');
    }
  }

  details() {
    print('''
     material: $material
     reifenAnzahl: $reifenAnzahl
     insassenMax: $insassenMax
     insassenMin: $_insassenMin
     baujahr: $_baujahr
     elektrisch: $elektrisch
     fahrer: $fahrer
     alter: $alter
       ''');
  }
}
