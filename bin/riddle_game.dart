import 'dart:io';
import 'dart:math';

import 'package:riddle_game/riddles_class.dart';

void main(List<String> arguments) {
  print("Welcome To Riddle Game");
  List<RiddleModels> riddles = [
    RiddleModels(
      answer: 'An egg',
      question: 'What has to be broken before you can use it?',
    ),
    RiddleModels(
      answer: "A candle",
      question:
          " I’m tall when I’m young, and I’m short when I’m old. What am I?",
    ),
    RiddleModels(
      answer: "All of them",
      question: "What month of the year has 28 days?",
    ),
    RiddleModels(
      answer: "The future",
      question: "What is always in front of you but can’t be seen?",
    ),
    RiddleModels(
      answer: "There aren’t any—it’s a one-story house.",
      question:
          "There’s a one-story house in which everything is yellow. Yellow walls, yellow doors, yellow furniture. What color are the stairs?",
    )
  ];

  int numberOfGuesses = 0;
  String userAnswer = "";
  // Random number to select a new index of question
  Random random = Random();
  int indexNumber = random.nextInt(5);
  print(
    "Question: ${riddles[indexNumber].question}",
  );

  //This will prompt the player to enter a guess until they are correct or left with no more chances

  while (numberOfGuesses < 3 && userAnswer != riddles[indexNumber].answer) {
    userAnswer = stdin.readLineSync()!;
    numberOfGuesses++;
  }
// checking condition that break the player from the guessing loop
  if (numberOfGuesses == 3) {
    print("You lose this round");
  } else {
    print(
      "You won the game in ${numberOfGuesses.toString()} guesses",
    );
  }
}
