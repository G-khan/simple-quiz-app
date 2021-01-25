import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'Q1. What is the capital of Turkey?',
      'answers': [
        {'text': 'Ankara', 'score': 10},
        {'text': 'Istanbul', 'score': -2},
        {'text': 'Yozgat', 'score': -2},
        {'text': 'Selanik', 'score': -2},
      ],
    },
    {
      'questionText': 'Q2. What is the name of Turkey\'s currency?',
      'answers': [
        {'text': 'Dolar', 'score': -2},
        {'text': 'Dinar', 'score': -2},
        {'text': 'Euro', 'score': -2},
        {'text': 'Lira', 'score': 10},
      ],
    },
    {
      'questionText': 'Q3. What is the national flower of Turkey?',
      'answers': [
        {'text': 'Rose', 'score': -2},
        {'text': 'Sunflower', 'score': -2},
        {'text': 'Tulip', 'score': 10},
        {'text': 'Daisy', 'score': -2},
      ],
    },
    {
      'questionText': 'Q4. Who is founder of the Republic of Turkey?',
      'answers': [
        {'text': 'Mustafa Kemal Atatürk', 'score': 10},
        {'text': 'Mustafa Kemal Atatürk', 'score': 10},
        {'text': 'Mustafa Kemal Atatürk', 'score': 10},
        {'text': 'Mustafa Kemal Atatürk', 'score': 10},
      ],
    },
    {
      'questionText':
          'Q5. The origin of Santa Claus is Bishop Nicholas of Turkey.',
      'answers': [
        {
          'text': 'True',
          'score': 10,
        },
        {'text': 'False', 'score': -2},
      ],
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('We have more questions!');
    } else {
      print('No more questions!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "title",
      theme: ThemeData(
        // Define the default brightness and colors.
        brightness: Brightness.dark,
        primaryColor: Color.fromRGBO(58, 33, 125, 1),
        accentColor: Color.fromRGBO(46, 29, 95, 1),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Simple Quiz',
            style: TextStyle(
                color: Color.fromRGBO(255, 255, 255, 1),
                fontFamily: 'BlackHanSans',
                fontWeight: FontWeight.w900),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          onPressed: _resetQuiz,
          child: Icon(
            Icons.replay,
            color: Colors.white,
            size: 40.0,
          ),
          backgroundColor: Color.fromRGBO(90, 55, 188, 1),
        ),
        bottomNavigationBar: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          color: Color.fromRGBO(46, 29, 95, 1),
          child: new Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                SizedBox(
                  height: 35.0,
                ),
                SizedBox(
                  height: 35.0,
                )
              ]),
        ),
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(0.0),
          child: _questionIndex < _questions.length
              ? Quiz(
                  answerQuestion: _answerQuestion,
                  questionIndex: _questionIndex,
                  questions: _questions,
                ) //Quiz
              : Result(_totalScore, _resetQuiz),
        ), //Padding
      ), //Scaffold
      debugShowCheckedModeBanner: false,
    ); //MaterialApp
  }
}
