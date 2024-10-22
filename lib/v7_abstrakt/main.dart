import 'package:oop_tutorial/v7_abstrakt/auto.dart';
import 'package:oop_tutorial/v7_abstrakt/fahrzeug.dart';
import 'package:oop_tutorial/v7_abstrakt/obst.dart';

void main() {
  final auto = AutoV7(
      baujahr: DateTime(2022),
      elektrisch: true,
      reifenBreite: 22,
      reifenRadius: 22);
  auto.tanken();
// final fahrzeug =AbstractFahrzeug();
  // final banane = Banane(gewicht: 0.1, name: 'Bananaa');

  // banane.schmecken();

  // final obst = Obst(gewicht: 0.1, name: 'Banane'); geh nicht
}
