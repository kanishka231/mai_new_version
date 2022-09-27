import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mai/home.dart';
import 'package:mai/quiz.dart';
import 'package:video_player/video_player.dart';
import '../../audio.dart';
import '../../video.dart';
import '../../quiz.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import '../../quiz_brain.dart';

class new_f extends StatefulWidget {
  new_f({Key? key}) : super(key: key);

  @override
  _new_fState createState() => _new_fState();
}
class _new_fState extends State<new_f> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Khand A"),
        ),
        body: ListView(
          children: [
            Card(
              color: Color(0xFF458D75),
              semanticContainer: true,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Column(
                children: <Widget>[
                  Text(
                    'Image',
                    style: TextStyle(fontSize:30,color: Colors.white),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(15, 20, 15, 15),
                    //color: Color(0x6E2B70FF),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(15.0),
                        child: Image.asset('assets/images/example.jpg')),
                  ),
                  Text(
                    'Video',
                    style: TextStyle(fontSize: 30,color: Colors.white),
                  ),

                  Container(
                    //padding: EdgeInsets.fromLTRB(15, 20, 15, 15),
                    height: 400,
                    width: 400,
                      //color: Color(0x6E2BFF3D),
                    child: VideoItems(
                      videoPlayerController: VideoPlayerController.asset(
                        'assets/videos/intro.mp4',
                      ),
                      looping: true,
                      autoplay: false,
                    ),
                  ),
                  Text(
                    'Audio',
                    style: TextStyle(fontSize: 30,color:Colors.white),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(15, 20, 15, 15),
                    height: 250,
                    width: 400,
                    //color: Color(0x6E2B70FF),
                    child: Audio(),
                    ),
                  Container(
                    padding: EdgeInsets.fromLTRB(15, 20, 15, 15),
                    height: 300,
                    //width: 400,
                    //color: Color(0x6E2B70FF),
                    child: HomePage(),

                  ),
                ],
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              elevation: 5,
              margin: EdgeInsets.all(5),
            ),
          ],
          padding: EdgeInsets.all(10),
          shrinkWrap: true,
          reverse: false,
        ));
  }
}
