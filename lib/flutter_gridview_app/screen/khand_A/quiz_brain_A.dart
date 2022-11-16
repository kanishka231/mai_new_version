class Question {
  String qText;
  bool qAns;

  Question(this.qText, this.qAns);
}

class QuizBrain_A{
  int _qNo = 0;

  List<Question> _questions = [
    Question(
        '1. प्रसब पूर्व जाँच जरुरी हैं। ',
        true),
    Question(
        '2.  गर्भावस्था को  जाँच करने वाली किट में दो गुलाबी लाइन का मतलब गर्भवती होता हैं।',
        true),
    Question('3.गर्भवस्था  के  दौरान ममता कार्ड जरुरी हैं।', true),
    Question('4.गर्भावस्था  के दौरान टिटनस के दो सुई लगवानी ज़रूरी हैं।', true),
    Question('5.गर्भावस्था के दौरान आयरन और कैल्शियम के गोली नियमित पहले 100 दिन तक लेनी चाहिए।', true),
    Question('6.  गर्भावस्था के दौरान प्रसव पूर्व  बुखार ,कमजोरी , चेहरे या पाँव में सूजन आये तो आशा से सम्पर्क ज़रूरी हैं।', true)
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