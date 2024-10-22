abstract class Obst {

String name;
double gewicht;

Obst({
required this.name,
required this.gewicht,
});

schmecken();

}

class Banane extends Obst {

  Banane ({
required super.gewicht,
required super.name,
  });

@override
  schmecken() {
    print('Objekt schmeckt nach Banane');
  }
}