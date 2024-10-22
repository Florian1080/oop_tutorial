class Teilnehmer {
  final String name;
  final String nachname;
  final DateTime geburtsdatum;

  const Teilnehmer({
    required this.geburtsdatum,
    required this.nachname,
    required this.name,
  });
  Teilnehmer copyWith({
    String? name,
    String? nachname,
    DateTime? geburtsdatum,
  }) {
    return Teilnehmer(
      geburtsdatum: geburtsdatum ?? this.geburtsdatum,
      nachname: nachname ?? this.nachname,
      name: name ?? this.name,
    );
  }
}
