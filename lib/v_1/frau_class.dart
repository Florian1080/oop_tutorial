// Hauptfunktion des Programms
void main() {
  // Erstellen einer neuen Instanz der Frau-Klasse
  Frau maria = Frau(
    geburtstag: DateTime(1990, 8, 30),
    verheiratet: false,
  );

  // Maria heiratet Max
  maria.heiraten('Max');

  // Ausgabe der Details von Maria
  maria.details();
}

// Definition der Frau-Klasse
class Frau {
  // Eigenschaften einer Frau
  String vorname;
  String eheNachname;
  String geburtsname;
  DateTime geburtstag;
  int alter;
  bool verheiratet;
  int kinderanzahl;

  // Konstruktor der Frau-Klasse
  // Verwendet benannte Parameter mit Standardwerten, wo möglich
  Frau({
    this.vorname = 'Maria',
    this.eheNachname = '',
    this.geburtsname = 'Meier',
    required this.geburtstag, // Geburtstag muss angegeben werden
    this.alter = 0,
    required this.verheiratet, // Beziehungsstatus muss angegeben werden
    this.kinderanzahl = 0,
  });

  // Methode zum Heiraten
  void heiraten(String ehe) {
    verheiratet = true;
    eheNachname = ehe;
    print('$vorname hat $ehe geheiratet');
  }

  // Methode für Scheidung
  void geschieden() {
    verheiratet = false;
    print('$vorname ist geschieden');
  }

  // Methode für Geburt eines Kindes
  void gebaeren(String kindVorname) {
    kinderanzahl++;
    print('$vorname hat $kindVorname geboren');
  }

  // Methode zur Ausgabe aller Details
  void details() {
    print('''
vorname = $vorname,
eheNachname = $eheNachname,
geburtsname = $geburtsname,
geburtstag = $geburtstag,
alter = $alter,
verheiratet = $verheiratet,
kinderzahl = $kinderanzahl,
''');
  }
}
