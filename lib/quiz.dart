import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

import 'quiz_brain.dart';

QuizBrain quizBrain = QuizBrain();

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage('images/bgImg.jpg'),
              colorFilter: ColorFilter.mode(
                Colors.grey.withOpacity(0.5),
                BlendMode.dstATop,
              ),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text(
                ' खंड अ : प्रसब  पूर्व जाँच',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.brown.shade900,
                ),
              ),
              RaisedButton(
                padding: EdgeInsets.all(15.0),
                elevation: 5.0,
                color: Colors.lightGreen.shade200,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Quiz(),
                    ),
                  );
                },
                child: Text(
                  'Start Quiz',
                  style: TextStyle(fontSize: 40.0, color: Colors.red),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Quiz extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: QuizPage(),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Icon> scoreKeeper = [];
  int countCorrectAns = 0;
  int totalNoOfQuestions = quizBrain.getCountOfQuestions();

  void checkAnswer(BuildContext context, bool userAns) {
    setState(() {
      if (quizBrain.getAnswer() == userAns) {
        scoreKeeper.add(
          Icon(
            Icons.check,
            color: Colors.green,
          ),
        );
        countCorrectAns++;
      } else {
        scoreKeeper.add(
          Icon(
            Icons.close,
            color: Colors.red,
          ),
        );
      }

      if (quizBrain.isFinished()) {
        if (countCorrectAns >= totalNoOfQuestions / 2) {
          Alert(
            closeFunction: () => Navigator.pop(context),
            context: context,
            type: AlertType.success,
            title: "Hurray!",
            desc:
            "You scored $countCorrectAns/$totalNoOfQuestions questions correct! You are well aware about COVID-19 precautions.",
            buttons: [
              DialogButton(
                child: Text(
                  "Exit the quiz",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.pop(context);
                },
                width: 200,
              )
            ],
          ).show();
        } else {
          Alert(
            closeFunction: () => Navigator.pop(context),
            context: context,
            type: AlertType.error,
            title: "Oh No!",
            desc:
            "You scored $countCorrectAns/$totalNoOfQuestions questions correct! I'm afraid you aren\'t much aware about COVID-19 precautions.",
            buttons: [
              DialogButton(
                child: Text(
                  "Take Quiz Again",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.pop(context);
                },
                width: 200,
              )
            ],
          ).show();
        }

        quizBrain.reset();
        scoreKeeper.clear();
        countCorrectAns = 0;
      } else {
        quizBrain.nextQuestion();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                quizBrain.getQuestion(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              textColor: Colors.white,
              color: Colors.green,
              child: Text(
                'True',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              onPressed: () {
                checkAnswer(context, true);
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              color: Colors.red,
              child: Text(
                'False',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                checkAnswer(context, false);
              },
            ),
          ),
        ),
        Expanded(
          child: Row(
            children: scoreKeeper,
          ),
        )
      ],
    );
  }
}

/*
question1: 'You can lead a cow down stairs but not up stairs.', false,
question2: 'Approximately one quarter of human bones are in the feet.', true,
question3: 'A slug\'s blood is green.', true,
*/