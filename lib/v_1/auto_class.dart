void main() {
  // Erstelle eine Instanz der AutoClass mit spezifischen Werten
  final autoClass1 =
      AutoClass('Plastic', 19, 6, 0, DateTime(2020), false, 'Housni', 11);

  // Rufe die Methode 'details' der autoClass1-Instanz auf, um die Fahrzeugdetails anzuzeigen
  autoClass1.details();

  // Auskommentierte Beispiele für weitere Objekte der AutoClass, die angepasst werden könnten
  // autoClass1.details();
  // final autoClass2 = AutoClass('Cartoon', 1);
  // final autoClass3 = AutoClass('Carbon', 4);

  // Beispiel für die Änderung von Attributen nach der Instanziierung
  // autoClass2.material = 'Plastic';
  // autoClass2.reifenAnzahl = 6;
  // autoClass2.insassenMax = 7;
}

// Definition der AutoClass, die verschiedene Eigenschaften eines Autos repräsentiert
class AutoClass {
  // Standardwerte für Eigenschaften der AutoClass
  String material = 'Metal';
  int reifenAnzahl = 4;
  int insassenMax = 5;
  int insassenMin = 1;
  DateTime baujahr = DateTime(2015);
  bool elektrisch = true;
  String? fahrer = 'Max'; // Fahrername, optional (String?)
  int alter = 9;

  // Konstruktor, der alle Eigenschaften beim Erstellen des Objekts initialisiert
  AutoClass(
    String gegebeneMaterial, // Material des Autos
    int gegebeneReifenAnzahl, // Anzahl der Reifen
    int gegebeneInsassenMax, // Maximale Anzahl der Insassen
    int gegebeneInsassenMin, // Minimale Anzahl der Insassen
    DateTime gegebenebaujahr, // Baujahr des Autos
    bool gegebeneelektrisch, // Ist das Auto elektrisch?
    String gegebeneFahrer, // Name des Fahrers
    int gegebeneAlter, // Alter des Fahrers
  ) {
    // Setze die übergebenen Werte auf die Eigenschaften der Klasse
    material = gegebeneMaterial;
    reifenAnzahl = gegebeneReifenAnzahl;
    insassenMax = gegebeneInsassenMax;
    insassenMin = gegebeneInsassenMin;
    baujahr = gegebenebaujahr;
    elektrisch = gegebeneelektrisch;
    fahrer = gegebeneFahrer;
    alter = gegebeneAlter;
  }

  // Methode, die prüft, ob das Auto fahren kann
  fahren() {
    // Das Auto fährt, wenn ein Fahrer vorhanden ist und es genau 4 Reifen hat
    if (fahrer != null && reifenAnzahl == 4) {
      print('Auto fährt');
      return;
    }
    // Wenn die Bedingungen nicht erfüllt sind, kann das Auto nicht fahren
    print('auto kann nicht fahren');
  }

  // Methode, um das Auto anzuhalten
  anhalten() {
    // Das Auto kann anhalten, wenn ein Fahrer vorhanden ist
    if (fahrer != null) {
      print('auto kann anhalten');
    }
  }

  // Methode zur Ausgabe der Details des Autos
  details() {
    // Gebe alle relevanten Eigenschaften des Autos aus
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
