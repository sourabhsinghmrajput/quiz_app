import 'package:flutter/material.dart';
import 'package:quiz_app/quiz_brain.dart';

QuizBrain quizBrain = QuizBrain();

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: QuizApp(),
        ),
      ),
    );
  }
}

class QuizApp extends StatefulWidget {
  const QuizApp({Key? key}) : super(key: key);

  @override
  _QuizAppState createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  List<Icon> scorekeeper = [];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 5,
            child: Center(
              child: Text(
                quizBrain.getQue(),
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              // ignore: deprecated_member_use
              child: FlatButton(
                color: Colors.green,
                onPressed: () {
                  bool corrans = quizBrain.getAns();
                  setState(() {
                    if (corrans == true) {
                      print("Correct");
                      scorekeeper.add(Icon(
                        Icons.check,
                        color: Colors.green,
                      ));
                    } else {
                      scorekeeper.add(Icon(
                        Icons.close,
                        color: Colors.red,
                      ));
                      print("Wrong !!");
                    }
                    quizBrain.nextQue();
                  });
                },
                child: Text(
                  "True",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              // ignore: deprecated_member_use
              child: FlatButton(
                color: Colors.red,
                onPressed: () {
                  bool corrans = quizBrain.getAns();

                  setState(() {
                    if (corrans == false) {
                      scorekeeper.add(Icon(
                        Icons.check,
                        color: Colors.green,
                      ));
                      print("Correct");
                    } else {
                      scorekeeper.add(Icon(
                        Icons.close,
                        color: Colors.red,
                      ));
                      print("Wrong !!");
                    }
                    quizBrain.nextQue();
                  });
                },
                child: Text(
                  'False',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
          Row(
            children: scorekeeper,
          )
        ],
      ),
    );
  }
}
