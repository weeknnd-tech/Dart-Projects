import 'dart:io';
import 'dart:math';
import 'Dart/input_utils.dart';

// Bot class
class Bot {
  int health, strong;

  Bot(this.strong, this.health);
  // Bot health
  void displayHealth() => print("Bot health : ${health}%");

  // Display bot details
  void displayDetails() => print("Health: $health\nStrong: $health");
}

// Player class
class Player {
  String pseudo;
  int health, strong;

  Player(this.pseudo, this.strong, this.health);

  // Player health
  void displayHealth() => print("${pseudo} health : ${health}%");
  // Display bot details
  void displayDetails() =>
      print("Pseudo: $pseudo\nHealth: $health\nStrong: $health");
}

// launches the dice
int launchDice([String? playerName]) {
  int beatPoint = (Random().nextInt(6) + 1) + (Random().nextInt(6) + 1);
  if (playerName != null) {
    print("$playerName have launched dice and got $beatPoint");
  } else {
    print("Bot have launched dice and got $beatPoint");
  }
  return beatPoint;
}

// Player attacks the bot
void playerAttacksBot(Player player, Bot bot) {
  if (bot.health > 0) {
    Input.readText("\n${player.pseudo} press on Enter key to launch the dice");
    int beatPoint = launchDice(player.pseudo);
    print(
        "${player.pseudo} afflicts damages on the bot with a strong of $beatPoint");
    if (beatPoint > bot.health) {
      bot.health = (bot.health - beatPoint) < 0 ? 0 : bot.health - beatPoint;
    } else {
      bot.health -= beatPoint;
    }
    bot.displayHealth();
  } else {
    print(
        "+++++++++++++++ ${player.pseudo} won the combat +++++++++++++++++\n");
  }
}

// Bot attacks player
void botAttacksPlayer(Bot bot, Player player) {
  if (player.health > 0) {
    int beatPoint = launchDice();
    print(
        "Bot afflicts damages on ${player.pseudo} with a strong of $beatPoint");
    if (beatPoint > player.health) {
      player.health =
          (player.health - beatPoint) < 0 ? 0 : player.health - beatPoint;
    } else {
      player.health -= beatPoint;
    }
    player.displayHealth();
  } else {
    print("++++++++++++ Bot won the combat +++++++++++++++\n");
  }
}

void main() {
  final Bot bot = Bot(1, 50);
  String? pseudo;
  pseudo = Input.readText("Enter your pseudo :");
  while (pseudo == null) {
    pseudo = Input.readText("Enter your pseudo :");
  }
  Player player = Player(pseudo, 1, 50);
  print("---- A bot want to fight with $pseudo -----");
  int round = 1;
  int whoStart = Random().nextInt(10) + 1;
  while ((bot.health > 0) && (player.health > 0)) {
    if (whoStart.isOdd) {
      botAttacksPlayer(bot, player);
      print("");
      whoStart = 2;
    } else if (whoStart.isEven) {
      playerAttacksBot(player, bot);
      print("");
      whoStart = 3;
    }
    print("Round ${round} finished");
    round += 1;
  }
  if (bot.health <= 0) {
    playerAttacksBot(player, bot);
  } else if (player.health <= 0) {
    botAttacksPlayer(bot, player);
  }
  print("============= ${player.pseudo} statistic ===============");
  player.displayDetails();

  print("============= Bot statistic ===============");
  bot.displayDetails();
}
