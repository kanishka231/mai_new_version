import 'package:flutter/material.dart';
import 'package:mai/flutter_gridview_app/screen/khand_C/video_C.dart';
import 'package:video_player/video_player.dart';



class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: ListView(
        children: <Widget>[
          Text(
            'Video',
            style: TextStyle(fontSize: 30,color: Colors.white),
          ),
          Container(
            color: Color(0xFF5E7A86),
            child: VideoItems_C(
            videoPlayerController: VideoPlayerController.asset('assets/videos/intro.mp4',
            ),
            looping: true,
            autoplay: false,
          ),

          )
        ],
      ),
    );
  }
}