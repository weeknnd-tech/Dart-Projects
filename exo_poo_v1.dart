import 'dart:io';
import 'dart:math';
import 'Dart/input_utils.dart';

// Bot Game
class Bot {
  int health, strong;

  Bot(this.strong, this.health);
  // Bot health
  void displayHealth() => print("Bot health : ${this.health}%");
}

// launches the dice
int launchDice(String playerName) {
  int beatPoint = (Random().nextInt(6) + 1) + (Random().nextInt(6) + 1);
  print("$playerName have launched dice and got $beatPoint");
  return beatPoint;
}

void main() {
  final Bot bot = Bot(1, 50);
  String? pseudo;
  pseudo = Input.readText("Enter your pseudo :");
  while (pseudo == null) {
    pseudo = Input.readText("Enter your pseudo :");
  }
  int round = 1;
  while (bot.health > 0) {
    Input.readText("\n$pseudo press on Enter key to launch the dice");
    int beatPoint = launchDice(pseudo);
    print("$pseudo afflicts damages on the bot with a strong of $beatPoint");
    if (beatPoint > bot.health) {
      bot.health = (bot.health - beatPoint) < 0 ? 0 : bot.health - beatPoint;
    }else{
      bot.health -= beatPoint;
    }
    bot.displayHealth();
    print("Round $round finished");
    round += 1;
  }
  print("\nBravo you have win!!!\n");
}
