import 'package:oop_tutorial/v5_vererbung/fahrzeug.dart';

class SpielzeugAuto extends Fahrzeug {
  int batterieAnzahl;
  SpielzeugAuto({
     this.batterieAnzahl=2,
     super.reifenAnzahl=4,
    required super.baujahr,
     super.reifenBreite=1,
     super.reifenRadius=2,
  }):super(fahrer: null, insassenMax:0,insassenMin: 0,elektrisch: true);
  @override
  fahren() {
    
    return print("spielzeug fährt");
  }
   @override
details() { 
  super.details();
  print('BatterieAnzahl: $batterieAnzahl');
  }


batterienanderung(){
print('batterienanderung');
}
}
