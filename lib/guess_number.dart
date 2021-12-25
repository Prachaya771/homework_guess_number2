// ignore_for_file: avoid_print

import 'dart:io';
import 'dart:math';

import 'package:homework_guess_number2/game.dart';



void main() {
  playGame();
  var again = true;


  do {
    stdout.write('Play again? (Y/N): ');
    var inputyn = stdin.readLineSync();

    if (inputyn == null) {
      continue;
    }

    if (inputyn == 'y')
      playGame();
    else if (inputyn == 'n')
      again = false;
    else if (inputyn == 'Y')
      playGame();
    else if (inputyn == 'N')
      again = false;
  } while (again);
}




void playGame() {
  const maxRandom = 100;
  var game = Game();
  var isCorrect = false;

  print('╔════════════════════════════════════════');
  print('║            GUESS THE NUMBER            ');
  print('╟────────────────────────────────────────');

  do {
    stdout.write('║ Guess the number between 1 and $maxRandom: ');
    var input = stdin.readLineSync();
    var guess = int.tryParse(input!);

    if (guess == null) {
      continue;
    }

    int c = game.getguessCount();
    var result = game.doGuess(guess);

    if (result == 1) {
      print('║ ➜ $guess is TOO HIGH! ▲');
      print('╟────────────────────────────────────────');
    } else if (result == -1) {
      print('║ ➜ $guess is TOO LOW! ▼');
      print('╟────────────────────────────────────────');
    } else if (result == 0) {
      print('║ ➜ $guess is CORRECT ❤, total guesses: $c');
      print('╟────────────────────────────────────────');
      isCorrect = true;
    }
  } while (!isCorrect);

  print('║                 THE END                ');
  print('╚════════════════════════════════════════');
}
