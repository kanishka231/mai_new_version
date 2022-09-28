import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mai/flutter_gridview_app/screen/khand_B/audio_B.dart';
import 'package:mai/flutter_gridview_app/screen/khand_B/quiz_B.dart';
import 'package:mai/flutter_gridview_app/screen/khand_B/video_B.dart';
import 'package:video_player/video_player.dart';

class khand_B extends StatefulWidget {
  khand_B({Key? key}) : super(key: key);

  @override
  _khand_BState createState() => _khand_BState();
}
class _khand_BState extends State<khand_B> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Khand B"),
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
                        child: Image.asset('assets/images/imp_pics/4_maa_ka_dudh.jpg')),
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
                    child: VideoItems_B(
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
                    child: Audio_B(),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(15, 20, 15, 15),
                    height: 300,
                    //width: 400,
                    //color: Color(0x6E2B70FF),
                    child: HomePage_2(),

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
