import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mai/flutter_gridview_app/screen/khand_A/quiz_A.dart';
import 'package:video_player/video_player.dart';
import '../../../video.dart';
import 'audio_A.dart';
import 'quiz_brain_A.dart';
class khand_A extends StatefulWidget {
  khand_A({Key? key}) : super(key: key);
  @override
  _khand_AState createState() => _khand_AState();
}
class _khand_AState extends State<khand_A> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "ए एन सी जांच",
            textAlign: TextAlign.center,
          ),
        ),
        body: ListView(
          children: [
            Card(
              color: Color(0xFFEC407A),
              semanticContainer: true,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Column(
                children: <Widget>[
                  Padding(padding: EdgeInsets.all(16.0)),
                  FloatingActionButton.extended(
                    label: Text(
                      'चित्र',
                      style: TextStyle(fontSize: 30, color: Colors.white),
                    ), // <-- Text
                    //backgroundColor: Colors.black,
                    icon: Icon(
                      // <-- Icon
                      Icons.photo,
                      size: 24.0,
                    ),
                    onPressed: () {},
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(15, 20, 15, 15),
                    //color: Color(0x6E2B70FF),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(15.0),
                        child: Image.asset(
                            'assets/images/imp_pics/2_sarkaari_ss_1.jpg')),
                  ),
                  Padding(padding: EdgeInsets.all(16.0)),
                  FloatingActionButton.extended(
                    label: Text(
                      'वीडियो',
                      style: TextStyle(fontSize: 30, color: Colors.white),
                    ), // <-- Text
                    //backgroundColor: Colors.black,
                    icon: Icon(
                      // <-- Icon
                      Icons.video_call_outlined,
                      size: 24.0,
                    ),
                    onPressed: () {},
                  ),
                  Container(
                    //padding: EdgeInsets.fromLTRB(15, 20, 15, 15),
                    height: 400,
                    //width: 400,
                    //color: Color(0x6E2BFF3D),
                    child: VideoItems(
                      videoPlayerController: VideoPlayerController.asset(
                        'assets/videos/childcare.mp4',
                      ),
                      looping: true,
                      autoplay: false,
                    ),
                  ),
                  FloatingActionButton.extended(
                    label: Text(
                      'ध्वनि',
                      style: TextStyle(fontSize: 30, color: Colors.white),
                    ), // <-- Text
                    //backgroundColor: Colors.black,
                    icon: Icon(
                      // <-- Icon
                      Icons.headphones_rounded,
                      size: 24.0,
                    ),
                    onPressed: () {},
                  ),
                  Padding(padding: EdgeInsets.all(16.0)),
                  //add default icon
                  //resize and add color to icon
                  Container(
                    padding: EdgeInsets.fromLTRB(15, 20, 15, 15),
                    height: 200,
                    width: 400,
                    //color: Color(0x6E2B70FF),
                    //color: Colors.pinkAccent,
                    child: Audio_A(),
                  ),
                  Padding(padding: EdgeInsets.all(16.0)),
                  Container(
                    padding: EdgeInsets.all(16.0),
                    height: 100,
                    width: 340,
                    color: Colors.white,
                    child: FloatingActionButton.extended(
                      label: Text(
                        'स्वाल जवाब',
                        style: TextStyle(fontSize: 40, color: Colors.white),
                      ), // <-- Text
                      //backgroundColor: Colors.black,
                      icon: Icon(
                        // <-- Icon
                        Icons.quiz_outlined,
                        size: 40.0,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Quiz(),
                          ),
                        );
                      },
                    ),
                  ),
                  Padding(padding: EdgeInsets.all(16.0)),

                ],
              ),

            ),
          ],
          padding: EdgeInsets.all(10),
          shrinkWrap: true,
          reverse: false,
        ));
  }
}
