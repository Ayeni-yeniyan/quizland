import 'package:flutter/material.dart';
import 'package:quizland/components/question.dart';

import '../screens/third_screen.dart';

class Questionlist {
  int _questionNumber = 0;
  int _score = 0;
  final List<Question> _questionList = [
    Question(
        questionText:
            'In the UK, the abbreviation NHS stands for National what Service?',
        option1: 'Humanity',
        option2: 'Health',
        option3: 'Honor',
        option4: 'Household',
        answer: 'Health'),
    Question(
        questionText:
            'Which Disney character famously leaves a glass slipper behind at a royal ball?',
        option1: 'Pocohontas',
        option2: 'Sleeping Beauty',
        option3: 'Cinderella',
        option4: 'Elsa',
        answer: 'Cinderella'),
    Question(
        questionText:
            ' What name is given to the revolving belt machinery in an airport that delivers checked luggage from the plane to baggage reclaim?',
        option1: 'Hanger',
        option2: 'Terminal',
        option3: 'Concourse',
        option4: 'Carousel',
        answer: 'Carousel'),
    Question(
        questionText:
            'Which toys have been marketed with the phrase “robots in disguise”?',
        option1: 'Bratz Dolls',
        option2: 'Sylvanian Families',
        option3: 'Hatchimals',
        option4: 'Transformers',
        answer: 'Transformers'),
    Question(
        questionText:
            'Which of these brands was chiefly associated with the manufacture of household locks?',
        option1: 'Phillips',
        option2: 'Flymo',
        option3: 'Chubb',
        option4: 'Ronseal',
        answer: 'Chubb'),
    Question(
        questionText:
            'The hammer and sickle is one of the most recognisable symbols of which political ideology?',
        option1: 'Republicanism',
        option2: 'Communism',
        option3: 'Conservatism',
        option4: 'Liberalism',
        answer: 'Communism'),
    Question(
        questionText: 'What does the word loquacious mean?',
        option1: 'Angry',
        option2: 'Chatty',
        option3: 'Beautiful',
        option4: 'Shy',
        answer: 'Chatty'),
    Question(
        questionText:
            'Obstetrics is a branch of medicine particularly concerned with what?',
        option1: 'Childbirth',
        option2: 'Broken bones',
        option3: 'Heart conditions',
        option4: 'Old age',
        answer: 'Childbirth'),
    Question(
        questionText:
            'Which of these religious observances lasts for the shortest period of time during the calendar year?',
        option1: 'Ramadan',
        option2: 'Diwali',
        option3: 'Lent',
        option4: 'Hanukkah',
        answer: 'Diwali'),
    Question(
        questionText:
            'Which of these cetaceans is classified as a “toothed whale”?',
        option1: 'Gray whale',
        option2: 'Minke whale',
        option3: 'Sperm whale',
        option4: 'Humpback whale',
        answer: 'Sperm whale'),
    Question(
        questionText:
            'In 1718, which pirate died in battle off the coast of what is now North Carolina?',
        option1: 'Calico Jack',
        option2: 'Blackbeard',
        option3: 'Bartholomew Roberts',
        option4: 'Captain Kidd',
        answer: 'Blackbeard'),
    Question(
        questionText: 'What sort of animal is Walt Disney\'s Dumbo?',
        option1: 'Deer',
        option2: 'Rabbit',
        option3: 'Elephant',
        option4: 'Donkey',
        answer: 'Elephant'),
    Question(
        questionText:
            'What was the name of the Spanish waiter in the TV sitcom "Fawlty Towers"?',
        option1: 'Manuel',
        option2: 'Pedro',
        option3: 'Alfonso',
        option4: 'Javier',
        answer: 'Manuel'),
    Question(
        questionText: 'Queen Anne was the daughter of which English Monarch?',
        option1: 'James II',
        option2: 'Henry VIII',
        option3: 'Victoria',
        option4: 'William I',
        answer: 'James II'),
    Question(
        questionText:
            'What is the Celsius equivalent of 77 degrees Fahrenheit?',
        option1: '15',
        option2: '20',
        option3: '25',
        option4: '30',
        answer: '25'),
    Question(
        questionText: 'Which is the largest city in the USA\'s largest state?',
        option1: 'Dallas',
        option2: 'Los Angeles',
        option3: 'New York',
        option4: 'Anchorage',
        answer: 'Anchorage'),
    Question(
        questionText:
            'The word "aristocracy" literally means power in the hands of?',
        option1: 'The few',
        option2: 'The best',
        option3: 'The barons',
        option4: 'The rich',
        answer: 'The best'),
    Question(
        questionText: 'In which palace was Queen Elizabeth I born?',
        option1: 'Greenwich',
        option2: 'Richmond',
        option3: 'Hampton Court',
        option4: 'Kensingto',
        answer: 'Greenwich'),
    Question(
        questionText:
            'From which author\'s work did scientists take the word "quark"?',
        option1: 'Lewis Carroll',
        option2: 'Edward Lear',
        option3: 'James Joyce',
        option4: 'Aldous Huxley',
        answer: 'James Joyce'),
    Question(
        questionText:
            'Which of these islands was ruled by Britain from 1815 until 1864?',
        option1: 'Crete',
        option2: 'Cyprus',
        option3: 'Corsica',
        option4: 'Corfu',
        answer: 'Corfu'),
  ];

  String getQuestion() {
    return _questionList[_questionNumber].questionText;
  }

  String getOption1() {
    return _questionList[_questionNumber].option1;
  }

  String getOption2() {
    return _questionList[_questionNumber].option2;
  }

  String getOption3() {
    return _questionList[_questionNumber].option3;
  }

  String getOption4() {
    return _questionList[_questionNumber].option4;
  }

  String getAnswer() {
    return _questionList[_questionNumber].answer;
  }

  int score() {
    return _score;
  }

  int getQuestionNumber() {
    return _questionNumber;
  }

  void nextQuestion(context) {
    _questionNumber == 19
        ? Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => ThirdScreen(
                      finalScore: _score,
                    )),
          )
        : _questionNumber++;
  }

  void previousQuestion() {
    _questionNumber--;
  }

  void updateScore() {
    _score++;
  }
}
