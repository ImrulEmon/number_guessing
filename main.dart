import 'dart:math';
import 'dart:io';

void main() {
  Random rand = Random();
  int? randomNumber = rand.nextInt(100) + 1;
  print(randomNumber);
  int tryCount = 0;
  int life = 5;
  int point = 100;

  while (true) {
    stdout.write('Guess a number from(1 - 100) : ');
    int? guessedNumber = int.parse(stdin.readLineSync()!);
    tryCount++;
    life--;

    if (life > 0) {
      print('\u001b[34m $life \u001b[0m guesses left');
      if (guessedNumber == randomNumber) {
        print(
            '\u001b[32m You Win! $randomNumber is correct answer.\nTry : $tryCount\nPoints : $point \u001b[0m');
        break;
      } else if (guessedNumber > randomNumber) {
        print(
            '\u001b[33m Try again!Random number is smaller than $guessedNumber \u001b[0m');
      } else {
        print(
            '\u001b[33m Try again!Random number is greater than $guessedNumber \u001b[0m');
      }
    } else {
      print('\u001b[31m You lose! $randomNumber is correct answer.\u001b[0m');
      break;
    }
    point = point - 20;
  }
}
