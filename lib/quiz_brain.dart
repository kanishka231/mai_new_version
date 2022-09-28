class Question {
  String qText;
  bool qAns;

  Question(this.qText, this.qAns);
}

class QuizBrain {
  int _qNo = 0;

  List<Question> _questions = [
    Question(
        '1. प्रसब पूर्व जाँच जरुरी हैं। ',
        true),
    Question(
        '2.  गर्भावस्था को  जाँच करने वाली किट में दो गुलाबी लाइन का मतलब गर्भवती होता हैं।',
        false),
    Question('3.गर्भवस्था  के  दौरान ममता कार्ड जरुरी हैं। ', true),
  ];

  void nextQuestion() {
    if (_qNo < _questions.length - 1) _qNo++;
  }

  String getQuestion() {
    return _questions[_qNo].qText;
  }

  bool getAnswer() {
    return _questions[_qNo].qAns;
  }

  int getCountOfQuestions() {
    return _questions.length;
  }

  bool isFinished() {
    if (_qNo == _questions.length - 1)
      return true;
    else
      return false;
  }

  void reset() {
    _qNo = 0;
  }
}