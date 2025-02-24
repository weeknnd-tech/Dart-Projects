// Classe générique
class Pile<T> {
  List<T> _elements = [];

  Pile();

  List<T> get elements => _elements;
  // Vérifie si la pile est vide
  bool estVide() => _elements.isEmpty;

  // Ajoute un élément au sommet de la pile
  void empiler(T element) {
    _elements.add(element);
  }

  // Retire et retourne l'élément au sommet de la pile
  T depiler() {
    if (_elements.isEmpty) {
      throw Exception("La pile est vide!");
    }
    return _elements.removeLast(); // Retirer le dernier élément (LIFO)
  }

  // Affiche les éléments de la pile
  void afficherPile() {
    if (_elements.isEmpty) {
      print("La pile est vide.");
    } else {
      print("Contenu de la pile (du sommet vers la base) :");
      for (var element in _elements.reversed) {
        print("$element");
      }
    }
  }
}

// Classe Voiture pour tester la pile
class Voiture {
  String marque;
  double vitesseMax;
  int nombrePortes;

  Voiture(this.marque, this.vitesseMax, this.nombrePortes);

  @override
  String toString() {
    return "Voiture(marque: $marque, vitesseMax: $vitesseMax, portes: $nombrePortes)";
  }
}

// Fonction principale
void main() {
  Voiture voiture1 = Voiture("Tesla", 250, 4);
  Voiture voiture2 = Voiture("Toyota", 200, 4);
  Voiture voiture3 = Voiture("Nissan", 230, 4);

  // Création de la pile de voitures
  Pile<Voiture> pile = Pile<Voiture>();

  // Empiler des voitures
  pile.empiler(voiture1);
  pile.empiler(voiture2);
  pile.empiler(voiture3);

  // Afficher la pile
  pile.afficherPile();
  // Voiture depile = pile.depiler();
  // Retirer une voiture du sommet
  // print("\nVoiture retirée : $depile");
  print("\nValeur de la pile : ${pile.elements}");

  // Afficher la pile après dépilement
  // pile.afficherPile();
}
