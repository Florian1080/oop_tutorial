import 'package:oop_tutorial/v5_vererbung/fahrzeug.dart';

class Bus extends Fahrzeug {
  bool zweietagig;
  Bus({
this.zweietagig = false,
    required super.baujahr,
     super.fahrer,
    required super.insassenMax,
    required super.reifenAnzahl,
    required super.reifenBreite,
    required super.reifenRadius,
  }) : super(elektrisch: false, insassenMin: 1);

  @override
  fahren() {
    if (fahrer == null) {
      print('Bus fährt nicht');
      return; 
    }
    print('Bus fährt');
  }
  @override
  details() {
  super.details();
  print('Zweietagig: $zweietagig');
  }
}
