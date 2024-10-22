import 'package:oop_tutorial/v4_assoziation/auto_class.dart';
import 'package:oop_tutorial/v4_assoziation/fahrer.dart';
import 'package:oop_tutorial/v5_vererbung/auto.dart';
import 'package:oop_tutorial/v5_vererbung/fahrzeug.dart';
import 'package:oop_tutorial/v5_vererbung/spielzeug_auto.dart';

void main() {
  Fahrer fahrer = Fahrer(
      fuehrerschein: true,
      geburtstag: DateTime(1980),
      name: 'Flo',
      vorname: 'Geisler');
  final auto2 =
      AutoClassV4(insassenMax: 2, baujahr: DateTime(2020), elektrisch: true);
  print(auto2.alter);
  AutoV5 auto =
      AutoV5(baujahr: DateTime(2015), elektrisch: false, fahrer: fahrer);
  print(fahrer);
  print(auto2.reifen);

  SpielzeugAuto spielzeugAuto = SpielzeugAuto(baujahr: DateTime(2020));
  // auto.fahren();
  // spielzeugAuto.fahren();

//   List test= [1,2,3];
//  test= [...test]..removeLast()..insert(0,3)..add(5)..addAll([7,7,7])..insertAll(1, [2,2,3]);

//  print(test);
// polymorphismus
  List<Fahrzeug> dyn = [auto, spielzeugAuto];
  for (var element in dyn) {
    element.fahren();
    element.details();
  }
}
