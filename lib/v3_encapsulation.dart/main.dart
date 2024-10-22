import 'package:oop_tutorial/v3_encapsulation.dart/auto_class.dart';
import 'package:oop_tutorial/v3_encapsulation.dart/frau_class.dart';

void main() {
  // Erstellen einer Instanz der AutoClassV2 mit spezifischen Parametern
  final autoClass1 = AutoClassV3(
    insassenMax: 6,
    fahrer: 'Florian',
    baujahr: DateTime(2100),
    elektrisch: true,
  );

  autoClass1.insassenMin = -22;

  // Aufruf der details-Methode für das erstellte Auto-Objekt
  // autoClass1.details();
  print(autoClass1.baujahr);
  // Zugriff auf die statische Variable 'material' der Klasse
  AutoClassV3.material;

  final maria =
      Frau(geburtstag: DateTime(2000), verheiratet: true, kinderanzahl: 3, vorname: 'Maria', geburtsname: 'Meier');
  maria.kinderanzahl = -3;
  maria.details();
}
