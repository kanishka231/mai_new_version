
class Question {
  final String title;
  final String image;

  Question({
    required this.title,
    required this.image,
  });
}
class QuestionData {
  List<Question> questions = [
    Question(
      title: 'kacha ghr yah pkaa ghr',
      image: 'assets/images/genralQuiz/house.jpg',
    ),
    Question(
      title: 'ek bccha yeh ek se jyda',
      image: 'assets/images/genralQuiz/childrens.jpg',

    ),
    Question(
      title: 'kitne pde likhe ho',
      image: 'assets/images/genralQuiz/eduction.jpg',

    ),
    Question(
      title: 'pehli baar maa yah ',
      image: 'assets/images/genralQuiz/age.jpg',
    ),

  ];
}