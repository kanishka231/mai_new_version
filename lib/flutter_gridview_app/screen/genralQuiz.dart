import 'package:flutter/material.dart';
import 'package:mai/flutter_gridview_app/screen/HomeScreen.dart';
import 'GenralQuestion.dart';
class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({Key? key}) : super(key: key);
  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}
class _QuestionsScreenState extends State<QuestionsScreen> {
  final List<Question> questions = QuestionData().questions;
  int index = 0;
  bool falseUserAnswer = false;
  bool trueUserAnswer = true;
  void nextQuestion() {
    if(index < questions.length-1) {
      index++;
      setState(() {});
    } else {
      showresult();

    }
  }

  Future<void> showresult() async {
    return await showDialog(
        barrierDismissible: false,
        context: context,
        builder: (ctx) {
          return AlertDialog(
            //title: const Text('Thank You'),
            content: Text('समाप्त',style: TextStyle(fontWeight: FontWeight.bold,
                fontSize: 32),),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(ctx).pop();
                  Navigator.of(context).pop();
                },
                child: const Text('धन्यवाद',style: TextStyle(fontWeight: FontWeight.bold,
                    fontSize: 32),),
              ),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    final Question question = questions[index];
    return Scaffold(
      appBar: AppBar(title: Text('प्रश्न संख्या : ${index + 1} / ${questions.length}'),),
      body: Container(
        height: MediaQuery.of(context).size.height * 1,
        margin: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //Text('Question numéro: ', style: const TextStyle(fontSize: 20, fontStyle: FontStyle.italic)),
            Text(question.title, style: const TextStyle(fontSize:35, fontWeight: FontWeight.bold),),
            SizedBox(
              child: Image.asset(
                question.image,
                //fit: BoxFit.cover,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: 60,
                  width: 180,
                  child: ElevatedButton(
                    onPressed: () {
                      //showAnswer(question.answer);
                      nextQuestion();
                    },
                    child: const Text('बाएं',style: TextStyle(fontSize:22,fontWeight: FontWeight.bold,
                        color: Colors.white),),

                  ),
                ),
                //Padding(padding: EdgeInsets.only(right:)),
                SizedBox(
                  height: 60,
                  width: 180,
                  child: ElevatedButton(
                    //color: Colors.green,
                    onPressed: () {
                      //showAnswer(question.answer);
                      nextQuestion();
                    },
                    child: const Text('दांए',style: TextStyle(fontSize:22,fontWeight: FontWeight.bold,
                        color: Colors.white),),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}