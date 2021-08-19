import 'choices.dart';
import 'package:destini/main.dart';

class ChoiceBrain {
  int _choiceNumber = 0;

  List<Choice> _choicebank = [
    Choice(
        questionChoice: 'What do you want to choose in 10', //0
        choice1: 'science',
        choice2: 'commerce'),
    Choice(
        questionChoice: 'whats in science', //1
        choice1: 'engineering',
        choice2: 'Medical'),
    Choice(
        questionChoice: 'Which field in commerece', //2
        choice1: 'CA',
        choice2: 'Govt bank job'),
    Choice(
        questionChoice: 'Which Engineering Field you are choosing', //3
        choice1: 'Restart',
        choice2: ''),
    Choice(
        questionChoice: 'Which Medical field you are choosing', //4
        choice1: 'Restart',
        choice2: ''),
    Choice(
        questionChoice: 'do u want to restart?', //5
        choice1: 'restart',
        choice2: ''),
  ];

  String getChoiceQuestion() {
    return _choicebank[_choiceNumber].questionChoice;
  }

  String getChoice1() {
    return _choicebank[_choiceNumber].choice1;
  }

  String getChoice2() {
    return _choicebank[_choiceNumber].choice2;
  }

  void nextchoice(int choicesNumber) {
    if (choicesNumber == 1 && _choiceNumber == 0) {
      _choiceNumber = 1;
    } else if (choicesNumber == 2 && _choiceNumber == 0) {
      _choiceNumber = 2;
    } else if (choicesNumber == 1 && _choiceNumber == 1) {
      _choiceNumber = 3;
    } else if (choicesNumber == 2 && _choiceNumber == 1) {
      _choiceNumber = 4;
    } else if (choicesNumber == 1 && _choiceNumber == 2) {
      _choiceNumber = 5;
    } else if (_choiceNumber == 3 || _choiceNumber == 4 || _choiceNumber == 5) {
      restart();
    }
  }

  void restart() {
    _choiceNumber = 0;
  }

  // bool buttonisvisible() {
  //   if (_choiceNumber == 0 || _choiceNumber == 1 || _choiceNumber == 2) {
  //     return true;
  //   } else {
  //     return false;
  //   }
  // }
}
