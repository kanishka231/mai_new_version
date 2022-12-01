
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
      title: 'कच्चा घर या फिर पक्का घर ?',
      image: 'assets/images/genralQuiz/house.jpg',
    ),
    Question(
      title: 'एक बच्चा यह फिर एक से ज्यादा ?',
      image: 'assets/images/genralQuiz/childrens.jpg',
    ),
    Question(
      title: 'शिक्षित या अशिक्षित ?',
      image: 'assets/images/genralQuiz/eduction.jpg',
    ),
    Question(
      title: 'आप किस आयु वर्ग के हैं ?',
      image: 'assets/images/genralQuiz/age.jpg',
    ),

  ];
}