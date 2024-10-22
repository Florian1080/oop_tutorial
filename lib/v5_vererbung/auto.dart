import 'package:oop_tutorial/v5_vererbung/fahrzeug.dart';

class AutoV5 extends Fahrzeug {
  
  AutoV5({
    required super.baujahr,
    required super.elektrisch,
    super.fahrer,
     super.reifenBreite=20,
     super.reifenRadius=28,
  }):super(reifenAnzahl: 4,insassenMin: 0,insassenMax: 9);

  @override
  fahren() {
    if (fahrer == null) {
      print('Auto kann nicht fahren');
      return;
    }
    print('Auto fährt');
  }
}
