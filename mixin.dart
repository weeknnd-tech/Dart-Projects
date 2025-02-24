// Mixin pour voler
import 'dart:ffi';

mixin Voler {
  void voler() {
    print("Je vole dans le ciel !");
  }
}

// Mixin pour nager
mixin Nager {
  void nager() {
    print("Je nage dans l'eau !");
  }
}

// Mixin pour courir
mixin Courir {
  void courir() {
    print("Je cours sur le sol !");
  }
}

// Mixin Sauter
mixin Sauter {
  void sauter(){
    print("Je saute dans l'air!");
  }
}

// Classe abstraite Animal
abstract class Animal {
  String get nom;

  void afficherType() {
    print("Je suis un $nom.");
  }
}

// Classe Oiseau
class Oiseau extends Animal with Voler {
  @override
  String get nom => "Oiseau";
}

// Classe Poisson
class Poisson extends Animal with Nager {
  @override
  String get nom => "Poisson";
}

// Classe Chien
class Chien extends Animal with Courir {
  @override
  String get nom => "Chien";
}

// Classe Canard (qui peut nager et voler)
class Canard extends Animal with Voler, Nager {
  @override
  String get nom => "Canard";
}

// Super animal
class SuperAnimal extends Animal with Voler, Nager, Courir, Sauter {
  @override
  String get nom => "SuperAnimal";
}
void main() {
  // Créons des animaux
  var oiseau = Oiseau();
  var poisson = Poisson();
  var chien = Chien();
  var canard = Canard();
  var superAnimal = SuperAnimal();

  // Affichons leurs comportements
  oiseau.afficherType();
  oiseau.voler();
  print("");

  poisson.afficherType();
  poisson.nager();
  print("");

  chien.afficherType();
  chien.courir();
  print("");

  canard.afficherType();
  canard.voler();
  canard.nager();

  superAnimal.afficherType();
  superAnimal.voler();
  superAnimal.nager();
  superAnimal.courir();
  superAnimal.sauter();
}
