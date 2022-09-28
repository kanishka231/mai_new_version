import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mai/flutter_gridview_app/screen/khand_F/audio_F.dart';
import 'package:mai/flutter_gridview_app/screen/khand_F/quiz_F.dart';
import 'package:mai/flutter_gridview_app/screen/khand_F/video_F.dart';
import 'package:video_player/video_player.dart';

class khand_F extends StatefulWidget {
  khand_F({Key? key}) : super(key: key);

  @override
  _khand_FState createState() => _khand_FState();
}
class _khand_FState extends State<khand_F> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Khand F"),
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
                        child: Image.asset('assets/images/imp_pics/8_tikaakaran.jpg')),
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
                    child: VideoItems_F(
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
                    child: Audio_F(),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(15, 20, 15, 15),
                    height: 300,
                    //width: 400,
                    //color: Color(0x6E2B70FF),
                    child: HomePage_6(),

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
