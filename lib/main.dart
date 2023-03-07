import 'package:flutter/material.dart';
import 'result.dart';
import 'quiz.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

bool isSwitched = false;

class _MyAppState extends State<MyApp> {
  int _questionIndex = 0;
  int _totalScore = 0;

  answerQuestion(int score) {
    print('Answer Chosen!');
    setState(() {
      _questionIndex += 1;
      _totalScore += score;
    });
    print(_questionIndex);
    print(_totalScore);
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  final List<Map<String, Object>> _questions = [
    {
      'questionText': 'Which widget orders the widgets vertically ?',
      'answers': [
        {'text': 'Text', 'score': 0},
        {'text': 'Center', 'score': 0},
        {'text': 'Column', 'score': 10},
        {'text': 'Row', 'score': 0},
      ]
    },
    {
      'questionText': 'Which Package used for temporary Store?',
      'answers': [
        {'text': 'shared_preference', 'score': 10},
        {'text': 'jiffy', 'score': 0},
        {'text': 'google_fonts', 'score': 0},
        {'text': 'image_picker', 'score': 0},
      ]
    },
    {
      'questionText': 'Which widget orders the widgets horizontally?',
      'answers': [
        {'text': 'Text', 'score': 0},
        {'text': 'Center', 'score': 0},
        {'text': 'Column', 'score': 0},
        {'text': 'Row', 'score': 10},
      ]
    },

    {
      'questionText': 'Which company estaplished Flutter ?',
      'answers': [
        {'text': 'Toyota', 'score': 0},
        {'text': 'Google', 'score': 10},
        {'text': 'Tesla', 'score': 0},
        {'text': 'Amazon', 'score': 0},
      ]
    },

    {
      'questionText': 'Which programming Language is used for Flutter?',
      'answers': [
        {'text': 'Column', 'score': 0},
        {'text': 'PHP', 'score': 0},
        {'text': 'Firebase', 'score': 0},
        {'text': 'Dart', 'score': 10},
      ]
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Quiz App',
      theme: ThemeData(primarySwatch: Colors.green),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'WHICH Q',
            style: TextStyle(
                color: isSwitched == false ? Colors.white : Colors.black),
          ),
          actions: [
            Switch(
              value: isSwitched,
              onChanged: (value) {
                setState(() {
                  isSwitched = value;
                });
              },
              activeColor: Colors.white,
              inactiveThumbColor: Colors.black
              //inactiveTrackColor: Colors.black,
            ),
          ],
        ),
        body: Container(
          color: isSwitched == false ? Color.fromARGB(255, 208, 211, 209) : Color.fromARGB(255, 32, 32, 32),
          child: _questionIndex < _questions.length
              ? Quiz(_questions, _questionIndex, answerQuestion)
              : Result(_resetQuiz, _totalScore),
        ),
      ),
    );
  }
}
