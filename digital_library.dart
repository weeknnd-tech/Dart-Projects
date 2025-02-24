// Interface Document
abstract class Document {
  String get title;
  String get author;
  int get pageNumber;

  // Display Document Details
  void displayDetails();
}

// Classe Book
class Book implements Document {
  String _title, _author;
  int _pageNumber;
  String _gender;

  @override
  String get title => _title;
  @override
  String get author => _author;
  @override
  int get pageNumber => _pageNumber;

  Book(this._title, this._author, this._pageNumber, this._gender);

  @override
  void displayDetails() {
    print("Livre - Titre : $_title \nAuteur : $_author \nPages : $_pageNumber \nGenre : $_gender");
  }
}

// Classe Magazine
class Magazine implements Document {
  String _title, _author;
  int _pageNumber;
  String _periodlicity;

  @override
  String get title => _title;
  @override
  String get author => _author;
  @override
  int get pageNumber => _pageNumber;

  Magazine(this._title, this._author, this._pageNumber, this._periodlicity);

  @override
  void displayDetails() {
    print("Magazine - Titre : $_title \nAuteur : $_author \nPages : $_pageNumber \nPeriodicite : $_periodlicity");
  }
}

// Classe Journal
class Journal implements Document {
  String _title, _author;
  int _pageNumber;
  String _publishingDate;

  @override
  String get title => _title;
  @override
  String get author => _author;
  @override
  int get pageNumber => _pageNumber;

  Journal(this._title, this._author, this._pageNumber, this._publishingDate);

  @override
  void displayDetails() {
    print("Journal - Titre : $_title \nAuteur : $_author \nPages : $_pageNumber \nDate : $_publishingDate");
  }
}

// Classe Library
class Library<T extends Document> {
  List<T> _documents = [];

  void addDocument(T document) {
    _documents.add(document);
  }

  void removeDocument(T document) {
    _documents.remove(document);
  }

  T? researchByTitle(String title) {
    return _documents.firstWhere(
      (document) => document.title.contains(title),
      orElse: () => null as T // Null casté en T
    );
  }

  void displayAll() {
    for (T doc in _documents) {
      print("Titre : ${doc.title}");
    }
  }

  void documentStatistic() {
    int books = _documents.whereType<Book>().length;
    int magazines = _documents.whereType<Magazine>().length;
    int journals = _documents.whereType<Journal>().length;

    print("Statistiques :");
    print("  Livres : $books");
    print("  Magazines : $magazines");
    print("  Journaux : $journals");
    print("  Total : ${_documents.length}");
  }
}

void main() {
  Library<Document> library = Library<Document>();
  Document book = Book("Réussir", "Weeknnd", 44, "Dev-perso");
  Document magazine = Magazine("L'Évolution terrestre", "Markus Fortz", 12, "Weekly");
  Document journal = Journal("Conseil Des Ministres", "Sydwaya", 2, "02/01/2025");

  library.addDocument(book);
  library.addDocument(magazine);
  library.addDocument(journal);

  library.displayAll();
  library.documentStatistic();

  for (var doc in library._documents) {
    doc.displayDetails();
  }

  // Recherche d'un document
  try{
    var searchedDoc = library.researchByTitle("terrestre");
    print("\nDocument trouvé :");
  }catch (e) {
    print("\nDocument non trouvé !");
  }
}