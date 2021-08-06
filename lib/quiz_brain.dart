import 'package:quiz_app/question.dart';

class QuizBrain {
  int _queno = 0;

  List<Question> _questionBank = [
    Question(q: 'Question one', a: true),
    Question(q: 'Question two', a: true),
    Question(q: 'Question three', a: true),
    Question(q: 'Question four', a: true),
    Question(q: 'Question five', a: true),
    Question(q: 'Question six', a: true),
    Question(q: 'Question seven', a: true),
    Question(q: 'Question eight', a: true),
    Question(q: 'Question nine', a: true),
    Question(q: 'Question ten', a: true),
    Question(q: 'Question eleven', a: true),
    Question(q: 'Question twelve', a: true),
    Question(q: 'Question thirteen', a: true),
    Question(q: 'Question fourteen', a: true),
    Question(q: 'Question fifteen', a: true),
  ];

  String getQue() {
    return _questionBank[_queno].queText;
  }

  bool getAns() {
    return _questionBank[_queno].queAns;
  }

  void nextQue() {
    if (_queno < _questionBank.length - 1) {
      _queno++;
    }
  }
}
