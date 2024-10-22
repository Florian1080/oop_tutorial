// Hauptfunktion des Programms
void main() {
  // Erstellen einer Instanz der AutoClassV2 mit spezifischen Parametern
  final autoClass1 = AutoClassV2(
    insassenMax: 6,
    fahrer: 'Florian',
    baujahr: DateTime(1999),
    elektrisch: true,
    
    alter: 22,
  );

  // Aufruf der details-Methode für das erstellte Auto-Objekt
  autoClass1.details();

  // Zugriff auf die statische Variable 'material' der Klasse
  AutoClassV2.material;
}

// Definition der Klasse AutoClassV2
class AutoClassV2 {
  // Statische Konstante für das Material
  static const String material = 'Metal';

  // Eigenschaften des Autos mit Standardwerten
  int reifenAnzahl;
  int insassenMax;
  int insassenMin;
  DateTime baujahr;
  bool elektrisch;
  String? fahrer;
  int alter;

  // Konstruktor mit benannten Parametern, einige sind erforderlich (required)
  AutoClassV2({
    this.reifenAnzahl = 4,
    required this.insassenMax,
    this.insassenMin = 1,
    required this.baujahr,
    required this.elektrisch,
     this.fahrer,
    required this.alter,
  });

  // Methode zum "Fahren" des Autos
  fahren() {
    if (fahrer != null && reifenAnzahl == 4) {
      print('Auto fährt');
      return;
    }
    print('auto kann nicht fahren');
  }

  // Methode zum "Anhalten" des Autos
  anhalten() {
    if (fahrer != null) {
      print('auto kann anhalten');
    }
  }

  // Methode zum Ausgeben der Details des Autos
  details() {
    print('''
     material: $material
     reifenAnzahl: $reifenAnzahl
     insassenMax: $insassenMax
     baujahr: $baujahr
     elektrisch: $elektrisch
     fahrer: $fahrer
     alter: $alter
       ''');
  }
}
