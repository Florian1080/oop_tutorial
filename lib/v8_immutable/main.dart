import 'package:oop_tutorial/v8_immutable/auto.dart';
import 'package:oop_tutorial/v8_immutable/teilnehmer.dart';

void main() {
  // final auto = Auto(
  //     insassenMax: 3,
  //     baujahr: DateTime(2020),
  //     elektrisch: true,
  //     insassenMin: 2,
  //     reifenAnzahl: 4);
  ImmutableAuto autoIm = ImmutableAuto(
      insassenMax: 3,
      baujahr: DateTime(2020),
      elektrisch: true,
      insassenMin: 2,
      reifenAnzahl: 4,
      fahrer: 'Florian');
   autoIm = autoIm.copyWith(reifenAnzahl: 11);
  // print(newAutoIm.insassenMax);
  autoIm.details();
  // autoIm.insassenMax = 6;
Teilnehmer teilnehmer = Teilnehmer(geburtsdatum: DateTime(1990), nachname: 'hzgjgui', name: 'Fati');
// teilnehmer.name = 'Florian';
teilnehmer = teilnehmer.copyWith(name:'Fatih' );
print (teilnehmer.name);
}

ImmutableAuto copyWith(
    {required ImmutableAuto altAuto,
    int? insassenMax,
    DateTime? baujahr,
    bool? elektrisch,
    int? insassenMin,
    int? reifenAnzahl,
    String? fahrer}) {
  return ImmutableAuto(
    insassenMax: insassenMax ?? altAuto.insassenMax,
    baujahr: baujahr ?? altAuto.baujahr,
    elektrisch: elektrisch ?? altAuto.elektrisch,
    insassenMin: insassenMin ?? altAuto.insassenMin,
    /*
       int newReifenAnzal;

      if(reifenAnzahl==null){
        newReifenAnzal=altAuto.reifenAnzahl;
      }else{
        newReifenAnzal=reifenAnzahl;
      }
    */
    reifenAnzahl: reifenAnzahl ?? altAuto.reifenAnzahl,
    fahrer: fahrer ?? altAuto.fahrer,
  );
}
