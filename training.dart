import 'dart:math';

// class Etudiant{
//     String nom;
//     int age;
//     double moyenne;

//     Etudiant(this.nom,this.age,this.moyenne);

//     void afficherDetails(){
//         print("Nom : $nom");
//         print("Age : $age");
//         print("Moyenne : $moyenne");
//     }

//     bool estAdmis(){
//         if(moyenne > 10){
//             return true;
//         }else{
//             return false;
//         }
//     }
// }

// class Voiture {
// String marque, modele;
// double prix;

// Voiture(this.marque, this.modele, this.prix);

// void afficherDetails() {
//     print("Marque: $marque");
//     print("Modele: $modele");
//     print("Prix: $prix \$");
// }
// }

// class VoitureElectronique extends Voiture {
// double autonomie;

// VoitureElectronique(String marque, String modele, double prix, this.autonomie)
//     : assert(autonomie > 0, "L'autonomie doit être positive"),
//         super(marque, modele, prix);

// void afficherDetailsVoiture() {
//     super.afficherDetails();
//     print("Autonomie : $autonomie km");
// }

// void recharger() {
//     print("La voiture est en train de recharger");
// }

// int reloadingTime(double reloadSpeed) {
//     if (reloadSpeed <= 0) {
//     throw ArgumentError("La vitesse de recharge doit être supérieure à 0.");
//     }
//     return (autonomie / reloadSpeed).round();
// }

// void afficherDetailsRecharge(double reloadSpeed) {
//     int reloadTime = reloadingTime(reloadSpeed);
//     print("Temps estimé pour une recharge complète à $reloadSpeed km/h : $reloadTime heures");
// }
// }

// class VoitureHybride extends Voiture {
// final bool modelHybride;

// VoitureHybride(String marque, String modele, double prix)
//     : modelHybride = true,
//         super(marque, modele, prix);

// void afficherDetailsVoiture() {
//     super.afficherDetails();
//     String hybride = modelHybride ? "Oui" : "Non";
//     print("\nModele Hybride : $hybride");
// }
// }
// Interface training
// abstract class Forme{
//     double calculerAire();
//     double calculerPerimetre();
// }

// class Rectangle implements Forme{
//     double largeur,hauteur;

//     Rectangle(this.largeur,this.hauteur);

//     @override
//     double calculerAire(){
//         if(largeur<0 || hauteur<0){
//             throw Exception("Les dimensions d'une figure ne doit pas etre negafives");
//         }else {
//             return (largeur*hauteur);
//         }
//     }

//     @override
//     double calculerPerimetre(){
//         if(largeur<0 || hauteur<0){
//             throw Exception("Les dimensions d'une figure ne doit pas etre negafives");
//         }else {
//             return (largeur+hauteur)*2;
//         }
//     }
// }

// class Cercle implements Forme{
//     double rayon;
//     static const double pi = 3.14;
//     Cercle(this.rayon);

//     @override
//     double calculerAire(){
//         if(rayon<0){
//             throw Exception("Les dimensions d'une figure ne doit pas etre negafives");
//         }else {
//             return (pi *pow(rayon,2));
//         }
//     }

//     @override
//     double calculerPerimetre(){
//         if(rayon<0){
//             throw Exception("Les dimensions d'une figure ne doit pas etre negafives");
//         }else {
//             return (2*rayon*pi);
//         }
//     }
// }

// abstract class Vehicule {
// String get marque;       // Getter pour la marque
// double get vitesseMax;   // Getter pour la vitesse maximale

// void afficherDetail();
// void demarrer();
// void rouler();
// }

// class Voiture implements Vehicule {
// @override
// final String marque;
// @override
// final double vitesseMax;
// final int nombrePortes;

// // Constructeur
// Voiture(this.marque, this.vitesseMax, this.nombrePortes);

// @override
// void afficherDetail() {
//     print("Véhicule : $marque");
//     print("Vitesse max : $vitesseMax km/h");
// }

// @override
// void demarrer() {
//     print("La voiture démarre... Room room !");
// }

// @override
// void rouler() {
//     print("La voiture roule à $vitesseMax km/h avec $nombrePortes portes.");
// }
// }

// class Moto implements Vehicule {
// @override
// final String marque;
// @override
// final double vitesseMax;
// final String type; // Type de la moto (sportive, routière, etc.)

// // Constructeur
// Moto(this.marque, this.vitesseMax, this.type);

// @override
// void afficherDetail() {
//     print("Véhicule : $marque");
//     print("Vitesse max : $vitesseMax km/h");
// }

// @override
// void demarrer() {
//     print("La moto démarre... Room room !");
// }

// @override
// void rouler() {
//     print("La moto $type roule à $vitesseMax km/h.");
// }
// }

// 
// POO Static concept
// class Convertisseur {
//     static const double pi = 3.14;

//     static double celsiusToFahrenheit(double celsius) => (celsius * 1.8) + 32;

//     static double fahrenheitToCelsius(double fahrentnheit) => (fahrentnheit-32) / 1.8;
// }

// Classe générique
class Pile<T> {
    List<T> _elements = [];

    Pile();

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

    // Retirer une voiture du sommet
    print("\nVoiture retirée : ${pile.depiler()}");

    // Afficher la pile après dépilement
    pile.afficherPile();
}


// Création d'employés
    // List<Employer> employees = [
    //     Employer("Juliette", "Secrétaire", 700.05),
    //     Employer("Caroline", "Trésorière", 900.05),
    //     Employer("Simone", "Directrice", 1300.05)
    // ];

    // // Parcours de la liste et affichage des détails
    // for (var employer in employees) {
    //     print("Avant augmentation :");
    //     print(employer);
    //     employer.augmenterSalaire(10); // Augmentation de 10%
    //     print("Après augmentation :");
    //     print(employer);
    //     print(""); // Ligne vide pour une meilleure lisibilité
    // }

// Liste polymorphe contenant des véhicules
// List<Vehicule> vehicules = [
//     Voiture("Tesla", 250, 4),
//     Moto("Yamaha", 180, "sportive")
// ];

// Parcours de la liste et affichage des détails
// for (var vehicule in vehicules) {
//     vehicule.afficherDetail();
//     vehicule.demarrer();
//     vehicule.rouler();
//     print(""); // Ligne vide pour une meilleure lisibilité
// }

// void calculFigure(Forme forme){
//     forme.calculerPerimetre();
//     forme.calculerAire();
// }
// VoitureElectronique electroCar = VoitureElectronique("Tesla", "Model S", 50000.0, 200.0);
// electroCar.afficherDetailsVoiture();
// electroCar.recharger();
// electroCar.afficherDetailsRecharge(50.0);

// VoitureHybride hybridCar = VoitureHybride("Mercedes", "Model R2202", 850000.56);
// hybridCar.afficherDetailsVoiture();
//     Etudiant etudiant = Etudiant("Jean",20,12.5);
//     etudiant.afficherDetails();
//     bool isPassed = etudiant.estAdmis();
//     print("Admis : $isPassed");
// 