import 'package:flutter/material.dart';
import 'package:mai/flutter_gridview_app/model/Item.dart';
import 'package:mai/flutter_gridview_app/screen/GetRatings.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class GridItemDetails extends StatelessWidget {
  final Item item;

  GridItemDetails(this.item);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      primary: true,
      appBar: AppBar(
        title: Text(item.name),
      ),
      backgroundColor: Color(0xFF5E7A86),
      resizeToAvoidBottomInset: false,
      body: ListView(
        children: <Widget>[
          HeaderBanner(this.item),

          InkWell(
            onTap: () => {},
            child: Container(
              margin: EdgeInsets.fromLTRB(50.0, 5.0, 50.0, 5.0),
              //width: 80.0,
              height: 40.0,

              child: Container(
                child: video()
              ),
            ),
          ),

        ],

        // ),
        //],
      ),
    );
  }
}
class video extends StatefulWidget{
  @override
  _videoState createState() => _videoState();
}
class _videoState extends State<video> {

  late VideoPlayerController controller;

  @override
  void initState() {
    loadVideoPlayer();
    super.initState();
  }

  loadVideoPlayer(){
    controller = VideoPlayerController.asset('assets/dogs.mp4');
    controller.addListener(() {
      setState(() {});
    });
    controller.initialize().then((value){
      setState(() {});
    });

  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      body: Container(
          child: Column(
              children:[
                AspectRatio(
                  aspectRatio: controller.value.aspectRatio,
                  child: VideoPlayer(controller),
                ),

                Container( //duration of video
                  child: Text("Total Duration: " + controller.value.duration.toString()),
                ),

                Container(
                    child: VideoProgressIndicator(
                        controller,
                        allowScrubbing: true,
                        colors:VideoProgressColors(
                          backgroundColor: Colors.redAccent,
                          playedColor: Colors.green,
                          bufferedColor: Colors.purple,
                        )
                    )
                ),

                Container(
                  child: Row(
                    children: [
                      IconButton(
                          onPressed: (){
                            if(controller.value.isPlaying){
                              controller.pause();
                            }else{
                              controller.play();
                            }

                            setState(() {

                            });
                          },
                          icon:Icon(controller.value.isPlaying?Icons.pause:Icons.play_arrow)
                      ),

                      IconButton(
                          onPressed: (){
                            controller.seekTo(Duration(seconds: 0));

                            setState(() {

                            });
                          },
                          icon:Icon(Icons.stop)
                      )
                    ],
                  ),
                )
              ]
          )
      ),
    );
  }
}

class HeaderBanner extends StatelessWidget {
  final Item item;

  HeaderBanner(this.item);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 0.0,
      child: Container(
        height: 200,
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            HeaderImage(this.item.bannerUrl),
          ],
        ),
      ),
    );
  }
}

class HeaderImage extends StatelessWidget {
  final String bannerUrl;

  HeaderImage(this.bannerUrl);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      bannerUrl,
      //width: 300,
      height: 300,
      //fit: BoxFit.cover,
    );
  }
}


