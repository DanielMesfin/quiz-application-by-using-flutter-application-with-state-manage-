import 'package:flutter/material.dart';
import 'quizeBrain.dart';

QuizeBrain quizeBrain = QuizeBrain();

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text('Quize App'),
        ),
        body: QuizeApp(),
      ),
    );
  }
}

class QuizeApp extends StatefulWidget {
  const QuizeApp({super.key});

  @override
  State<QuizeApp> createState() => _QuizeAppState();
}

class _QuizeAppState extends State<QuizeApp> {
  List<Icon> scoresMark = [];
  void checkAnswerQuestion(bool answer) {
    setState(() {
      bool corrcetAnswer = quizeBrain.isQuestionCorrect();
      if (scoresMark.length <= quizeBrain.indexCheck()) {
        if (corrcetAnswer == answer) {
          scoresMark.add(
            const Icon(
              Icons.check,
              color: Colors.green,
              size: 25.0,
            ),
          );
        } else {
          scoresMark.add(
            const Icon(
              Icons.close,
              color: Colors.red,
              size: 25.0,
            ),
          );
        }
      } else {
        scoresMark.clear();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          flex: 3,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Center(
              child: Text(
                quizeBrain.getQuestion(),
                style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 22.0),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(25, 5, 25, 4),
            child: TextButton(
              onPressed: () {
                //TODO: call the function and pass the argument of false
                checkAnswerQuestion(true);
              },
              style: TextButton.styleFrom(backgroundColor: Colors.green),
              child: const Text('True'),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(25, 5, 25, 15),
            child: TextButton(
              onPressed: () {
                // TODO: Here call  the function pass the argument of false  ;
                checkAnswerQuestion(false);
              },
              style: TextButton.styleFrom(backgroundColor: Colors.red),
              child: const Text('False'),
            ),
          ),
        ),
        Row(mainAxisAlignment: MainAxisAlignment.center, children: scoresMark)
      ],
    );
  }
}
