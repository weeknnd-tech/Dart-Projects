void main() {
  newFromString("Markus")
      .then((data) => print(data))
      .catchError((error) => print(error));
  Color color = Color();
  print(color.red);
}

Future<List> newFromString(String word) async {
  Duration duration = Duration(seconds: 2);
  int? durationNum = int.tryParse(duration.toString().split(":")[2].split(".")[0]);
  print(" Request duration: $durationNum");
  await Future.delayed(duration);
  return word.split("");
}