class Frau {
  String vorname;
  Mensch? eheNachname;
  String geburtsname;
  DateTime _geburtstag;
  bool _verheiratet;
  int _kinderanzahl;

  Frau({
    required this.vorname,
    this.eheNachname,
    required this.geburtsname,
    required DateTime geburtstag,
    bool verheiratet = false,
    int kinderanzahl = 0,
  })  : _geburtstag = geburtstag,
        _kinderanzahl = kinderanzahl,
        _verheiratet = verheiratet {
    if (alter < 14) {
      _kinderanzahl = 0;
    }
    if (alter < 18) {
      _verheiratet = false;
    }
    if (geburtstag.year < 1900) {
      _geburtstag = DateTime(1900);
    }
    if (geburtstag.year > DateTime.now().year) {
      _geburtstag = DateTime(DateTime.now().year);
    }
  }

  set kinderanzahl(int value) {
    if (alter < 18) {
      _kinderanzahl = 0;
      return;
    }
    if (value < 0) {
      throw Exception('Kinderanzahl darf nicht negativ sein');
    }
    _kinderanzahl = value;
  }

  int get alter {
    return DateTime.now().year - _geburtstag.year;
  }

  bool get verheiratet {
    return _verheiratet;
  }

  void heiraten(Mensch ehe) {
    _verheiratet = true;
    eheNachname = ehe;
    print('$vorname hat $ehe geheiratet');
  }

  void geschieden() {
    _verheiratet = false;
    print('$vorname ist geschieden');
  }

  void gebaeren(String kindVorname) {
    _kinderanzahl++;
    print('$vorname hat $kindVorname geboren');
  }

  void details() {
    print('''
vorname = $vorname,
eheNachname = $eheNachname,
geburtsname = $geburtsname,
geburtstag = $_geburtstag,
alter = $alter,
verheiratet = $_verheiratet,
kinderzahl = $_kinderanzahl,
''');
  }
}

class Mensch {
  String name;
  String vorname;
  DateTime geburtstag;

  Mensch({required this.geburtstag, required this.name, required this.vorname});
}
