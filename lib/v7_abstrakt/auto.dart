import 'package:oop_tutorial/v7_abstrakt/fahrzeug.dart';

class AutoV7 extends AbstractFahrzeug {
  AutoV7({
    required super.baujahr,
    required super.elektrisch,
    super.fahrer,
    super.reifenBreite = 20,
    super.reifenRadius = 28,
  }) : super(reifenAnzahl: 4, insassenMin: 0, insassenMax: 9);

  @override
  fahren(int kilometer) {
    if (fahrer == null) {
      print('Auto kann nicht fahren');
      return;
    }
    print('Auto fährt $kilometer');
  }
  @override
tanken() {
  print ('auto tänkt');
  }
}
