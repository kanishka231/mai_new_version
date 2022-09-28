import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mai/flutter_gridview_app/screen/khand_C/quiz_C.dart';
import 'package:mai/flutter_gridview_app/screen/khand_C/video_C.dart';
import 'package:video_player/video_player.dart';

import 'audio_C.dart';

class khand_C extends StatefulWidget {
  khand_C({Key? key}) : super(key: key);

  @override
  _khand_CState createState() => _khand_CState();
}
class _khand_CState extends State<khand_C> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Khand C"),
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
                        child: Image.asset('assets/images/imp_pics/5_navjaat_dekhbhal.jpg')),
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
                    child: VideoItems_C(
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
                    child: Audio_C(),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(15, 20, 15, 15),
                    height: 300,
                    //width: 400,
                    //color: Color(0x6E2B70FF),
                    child: HomePage_3(),

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
