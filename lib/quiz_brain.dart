import 'package:flutter/foundation.dart';
import 'question.dart';

class QuizBrain {
  int _questionNumber = 0;
  final List<Question> _questionBank = [
    Question('Do camels have three sets of eyelids?', true),
    Question('It is possible to sneeze while sleeping.', false),
    Question('Australia is a country as well as a continent.', true),
    Question('Herbivore animals consume meat.', false),
    Question('The cell nucleus was discovered by Robert Brown.', true),
    Question('The national flag of America has 51 stars.', true),
    Question('Pneumonia is an infection that affects lungs.',true),
    Question('The capital of Spain is Madrid.', true),
    Question('The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.', false),
    Question('The total surface area of two human lungs is approximately 70 square metres.', true),
    Question('Google was originally called "Backrub".', true),
    Question('Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.', true),
    Question('In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.', true),
  ];
  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }
  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }
  bool getCorrectAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }
  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      if (kDebugMode) {
        print('Now returning true');
      }
      return true;
    } else {
      return false;
    }
  }
  void reset() {
    _questionNumber = 0;
  }
}