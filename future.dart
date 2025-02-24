// Future<Map> fetchData() async {
//   await Future.delayed(Duration(seconds: 2));
//   // return {"message":"Données récupérées avec succès!"};
//   throw Exception("Unable to fetch data");
// }

// void main() async {
//   print("Chargement des données...");
//   try{
//     Map data = await fetchData();
//     print(data["message"]);
//   }catch(e) {
//     print(e);
//     }

// }

// void main() {
//   print("Chargement des données...");
//   fetchData().then((data) {
//     var message = data["message"] ;
//     print(message); // Résultat : "Données récupérées avec succès !"
//   }).catchError((e) {
//     print("Erreur : $e");
//   });
// }

// Future<String> step1() async {
//   await Future.delayed(Duration(seconds: 1));
//   return "Étape 1 terminée en une seconde";
// }

// Future<String> step2() async {
//   await Future.delayed(Duration(seconds: 2));
//   return "Étape 2 terminée en deux secondes";
// }

// Future<String> step3() async {
//   await Future.delayed(Duration(seconds: 3));
//   throw Exception("step3 data can't be fetched");
//   // return "Étape 3 terminée en trois secondes";
// }

// // void main() async {
// //   print(await step1());
// //   print(await step2());
// //   print(await step3());
// // }

// void main() async {
//     // step1().then((data){
//     // print(data);
//     // }).catchError((e){
//     // print(e);
//     // });
//     // try{
//       // var data = await step1();
//       // print(data);
//     //  }catch(e){
//     // print(e);
//       //}
//     // step3().then((data){
//     //   print(data);
//     // }).catchError((e){
//     //   print(e);
//     //   });

//     // Future.any execute the task that has completed first
//     try{
//       var data = await Future.any([step1(),step2(),step3()]);
//       print(data);
//     }catch (e) {
//       print(e);
//     }
//     // Future.wait Waits for multiple futures to complete and collects their results.
//       List<Future> futureList = [step1(),step2(),step3()];
//     try{
//       var data = await Future.wait(futureList);
//       print(data);
//     }catch (e) {
//       print(e);
//       String functionName = e.toString().split(" ")[1];
//       futureList.remove("${functionName}()");
//       print(futureList);
//     }
// }

Future<String> downloadFile(String url) async {
  print("Téléchargement du fichier depuis : $url");
  await Future.delayed(Duration(seconds: 3));
  return "Fichier téléchargé depuis $url";
}

void main() async {
  print("Démarrage du téléchargement...");
  String file = await downloadFile("https://example.com/file");
  print(file); // Résultat : "Fichier téléchargé depuis https://example.com/file"
}
