import 'package:oop_tutorial/v4_assoziation/auto_class.dart';
import 'package:oop_tutorial/v5_vererbung/auto.dart';
import 'package:oop_tutorial/v5_vererbung/bus.dart';
import 'package:oop_tutorial/v5_vererbung/fahrzeug.dart';

void main() {
  // final fahrzeug = Fahrzeug(reifenAnzahl: 4, baujahr: DateTime(1960), elektrisch: false, reifenBreite: 24, insassenMax: 4, insassenMin: 1, reifenRadius: 50);
  // final auto = AutoV5( baujahr: DateTime(1960), elektrisch: false, reifenBreite: 24,  reifenRadius: 50);
  // fahrzeug.details();
//   auto.details();
//  auto.fahren();
Bus fahrer = Bus(baujahr: DateTime(1970), insassenMax: 50, reifenAnzahl: 6, reifenBreite: 46, reifenRadius: 50);

AutoClassV4 bus = AutoClassV4(insassenMax: 50, baujahr: DateTime(1984), elektrisch: false);

print(bus.alter);

}
