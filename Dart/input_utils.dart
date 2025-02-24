import 'dart:io';

class Input {
  // Fetches user input text method
  static String? readText(String text) {
    print(text);
    return stdin.readLineSync();
  }

  // Fetches user input text method
  static readNumber(String text) {
    String? input = "";
    var result;
    do {
      if (input != "") {
        print("\nEnter a valid number!\n");
      }
      input = readText(text);
      if (input != null) {
        if (input.toString().contains(".")) {
          result = double.tryParse(input);
        } else {
          result = int.tryParse(input);
        }
      }
    } while (result == null);
    return result;
  }
}
