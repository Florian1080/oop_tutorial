// Definition der Klasse AutoClassV3, die Autos beschreibt
class AutoClassV3 {
  // Statische Konstante für das Material, das für alle Objekte der Klasse gleich ist
  static const String material = 'Metal';

  // Eigenschaften des Autos mit Standardwerten, falls beim Erstellen des Objekts keine Werte übergeben werden
  int reifenAnzahl; // Anzahl der Reifen des Autos
  int insassenMax; // Maximale Anzahl an Passagieren
  int _insassenMin; // Minimale Anzahl an Passagieren (private Variable)
  DateTime _baujahr; // Baujahr des Autos (private Variable)
  bool elektrisch; // Ob das Auto elektrisch ist oder nicht
  String? fahrer; // Fahrer des Autos (optional, kann null sein)

  // Konstruktor mit benannten Parametern und optionalen Standardwerten für einige Eigenschaften
  // Einige Parameter (insassenMax, baujahr und elektrisch) sind erforderlich
  AutoClassV3({
    this.reifenAnzahl = 4, // Standardmäßig hat das Auto 4 Reifen
    required this.insassenMax, // Maximale Anzahl an Insassen muss angegeben werden
    int insassenMin = 1, // Standardwert für minimale Insassenanzahl ist 1
    required DateTime baujahr, // Baujahr muss angegeben werden
    required this.elektrisch, // Ob das Auto elektrisch ist, muss angegeben werden
    this.fahrer, // Fahrer ist optional
  })  : _insassenMin = insassenMin, // Setzt den Wert für _insassenMin
        _baujahr = baujahr // Setzt den Wert für _baujahr
  {
    // Validierung des Baujahres: Das Baujahr darf nicht vor 1900 liegen
    if (baujahr.year < 1900) {
      _baujahr =
          DateTime(1900); // Setzt das Baujahr auf 1900, wenn es kleiner ist
    }
    // Das Baujahr darf auch nicht in der Zukunft liegen
    if (baujahr.year > DateTime.now().year) {
      _baujahr = DateTime(DateTime.now()
          .year); // Setzt das Baujahr auf das aktuelle Jahr, wenn es größer ist
    }
  }

  // Setter für insassenMin, um sicherzustellen, dass der Wert innerhalb eines gültigen Bereichs liegt
  set insassenMin(int num) {
    // Verhindert, dass insassenMin größer als insassenMax oder kleiner als 0 wird
    if (num > insassenMax) {
      num = insassenMax;
    }
    if (num < 0) {
      num = 0;
    }
    _insassenMin = num; // Setzt den korrigierten Wert
  }

  // Getter für das Alter des Autos (berechnet auf Basis des aktuellen Jahres und des Baujahrs)
  int get alter {
    return DateTime.now().year - _baujahr.year; // Berechnet das Alter des Autos
  }

  // Getter für insassenMin, um den Wert von außerhalb der Klasse zugreifbar zu machen
  int get insassenMin {
    return _insassenMin;
  }

  // Getter für das Baujahr, um den Wert von außerhalb der Klasse zugreifbar zu machen
  DateTime get baujahr {
    return _baujahr;
  }

  // Methode, die das Fahren des Autos simuliert
  // Das Auto kann nur fahren, wenn ein Fahrer vorhanden ist und es genau 4 Reifen hat
  fahren() {
    if (fahrer != null && reifenAnzahl == 4) {
      print('Auto fährt');
      return; // Beendet die Methode nach erfolgreichem Fahren
    }
    print(
        'auto kann nicht fahren'); // Wird ausgegeben, wenn die Bedingungen zum Fahren nicht erfüllt sind
  }

  // Methode, die das Anhalten des Autos simuliert
  // Das Auto kann anhalten, wenn ein Fahrer vorhanden ist
  anhalten() {
    if (fahrer != null) {
      print('auto kann anhalten');
    }
  }

  // Methode, die die Details des Autos ausgibt
  // Zeigt die Eigenschaften des Autos auf der Konsole an
  details() {
    print('''
     material: $material
     reifenAnzahl: $reifenAnzahl
     insassenMax: $insassenMax
     insassenMin: $_insassenMin
     baujahr: $_baujahr
     elektrisch: $elektrisch
     fahrer: $fahrer
     alter: $alter
       ''');
  }
}
