import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:mai/flutter_gridview_app/screen/appeal_video.dart';
import 'package:mai/flutter_gridview_app/screen/intro_video.dart';
import 'package:mai/flutter_gridview_app/screen/khandB.dart';
import 'package:mai/flutter_gridview_app/screen/khandC.dart';
import 'package:mai/flutter_gridview_app/screen/khandD.dart';
import 'package:mai/flutter_gridview_app/screen/khandE.dart';
import 'package:mai/flutter_gridview_app/screen/khandF.dart';
import 'package:mai/flutter_gridview_app/screen/menu_bar.dart';

import 'khandA.dart';

void main() {
  runApp(HomeScreen());
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App Learning',
      theme: ThemeData(
        primarySwatch: Colors.green,
        backgroundColor: Colors.grey,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        //drawer: new AppDrawer(), // left side
        endDrawer: new AppDrawer(), // right side
        appBar: AppBar(
          title: Text("Maai"),
        ),
        body: GridView(
          gridDelegate: SliverQuiltedGridDelegate(
            crossAxisCount: 2,
            crossAxisSpacing: 5,
            mainAxisSpacing: 7,
            pattern: [
              QuiltedGridTile(2, 2),
              QuiltedGridTile(1, 1),
              QuiltedGridTile(1, 1),
              QuiltedGridTile(1, 1),
              QuiltedGridTile(1, 1),
              QuiltedGridTile(1, 1),
              QuiltedGridTile(1, 1),
              QuiltedGridTile(2, 2),
            ],
          ),
          children: [
            GestureDetector (
              child: Card(
                color: Colors.teal,
                semanticContainer: true,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Column(
                  children: <Widget>[
                    Text('INTRO Video',style: TextStyle(fontSize: 35,fontWeight: FontWeight. bold),
                    ),

                    Container(
                      padding: EdgeInsets.fromLTRB(15,20,15,15),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(15.0),
                          child: Image.asset('assets/images/imp_pics/1_intro_ss.jpg')),
                    ),
                  ],
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                elevation: 5,
                margin: EdgeInsets.all(10),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => video_intro(),
                  ),
                );
              },
            ),
            GestureDetector (
              child: Card(
                color: Color(0xFF91D72C),
                semanticContainer: true,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Column(
                  children: <Widget>[
                    Text('खंड A',style: TextStyle(fontSize: 35,fontWeight: FontWeight. bold),),
                    Container(
                      padding: EdgeInsets.fromLTRB(15,20,15,15),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(15.0),
                          child: Image.asset('assets/images/imp_pics/2_sarkaari_ss_1.jpg')),
                    ),
                  ],
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                elevation: 5,
                margin: EdgeInsets.all(10),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => khand_A(),
                  ),
                );
              },
            ),


            GestureDetector (
              child:
              Card(
                color: Color(0xFFB80F03),
                semanticContainer: true,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Column(
                  children: <Widget>[
                    Text('खंड B',style: TextStyle(fontSize: 35,fontWeight: FontWeight. bold),),
                    Container(
                      padding: EdgeInsets.fromLTRB(15,20,15,15),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(15.0),
                          child: Image.asset('assets/images/imp_pics/4_maa_ka_dudh.jpg')),
                    ),
                  ],
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                elevation: 5,
                margin: EdgeInsets.all(10),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => khand_B(),
                  ),
                );
              },
            ),
            GestureDetector (
              child:
              Card(
                color: Color(0xFF0443A1),
                semanticContainer: true,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Column(
                  children: <Widget>[
                    Text('खंड C',style: TextStyle(fontSize: 35,fontWeight: FontWeight. bold),),
                    Container(
                      padding: EdgeInsets.fromLTRB(15,20,15,15),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(15.0),
                          child: Image.asset('assets/images/imp_pics/5_navjaat_dekhbhal.jpg')),
                    ),
                  ],
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                elevation: 5,
                margin: EdgeInsets.all(10),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => khand_C(),
                  ),
                );
              },
            ),

            GestureDetector (
              child: Card(
                color: Color(0xFFCD600D),
                semanticContainer: true,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Column(
                  children: <Widget>[
                    Text('खंड D',style: TextStyle(fontSize: 35,fontWeight: FontWeight. bold),),
                    Container(
                      padding: EdgeInsets.fromLTRB(15,20,15,15),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(15.0),
                          child: Image.asset('assets/images/imp_pics/6_maa_ki_dekhbhal.jpg')),
                    ),
                  ],
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                elevation: 5,
                margin: EdgeInsets.all(10),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => khand_D(),
                  ),
                );
              },
            ),
            GestureDetector (
              child:
              Card(
                color: Color(0xFF840678),
                semanticContainer: true,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Column(
                  children: <Widget>[
                    Text('खंड E',style: TextStyle(fontSize: 35,fontWeight: FontWeight. bold),),
                    Container(
                      padding: EdgeInsets.fromLTRB(15,20,15,15),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(15.0),
                          child: Image.asset('assets/images/imp_pics/7_kam_wajan_waale_bachhe.jpg')),
                    ),
                  ],
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                elevation: 5,
                margin: EdgeInsets.all(10),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => khand_E(),
                  ),
                );
              },
            ),
            GestureDetector (
              child:
              Card(
                color: Color(0xFF5510A1),
                semanticContainer: true,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Column(
                  children: <Widget>[
                    Text('खंड F',style: TextStyle(fontSize: 35,fontWeight: FontWeight. bold),),
                    Container(
                      padding: EdgeInsets.fromLTRB(15,20,15,15),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(15.0),
                          child: Image.asset('assets/images/imp_pics/8_tikaakaran.jpg')),
                    ),

                  ],
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                elevation: 5,
                margin: EdgeInsets.all(10),

              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => khand_F(),
                  ),
                );
              },
            ),
            GestureDetector (
              child:
              Card(
                color: Color(0xFFDE0759),
                semanticContainer: true,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Column(
                  children: <Widget>[
                    Text('Appeal Video',style: TextStyle(fontSize: 35,fontWeight: FontWeight. bold),),
                    Container(
                      padding: EdgeInsets.fromLTRB(15,20,15,15),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(15.0),
                          child: Image.asset('assets/images/imp_pics/9_nivedan.jpg')),
                    ),

                  ],
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                elevation: 5,
                margin: EdgeInsets.all(10),

              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => appeal_video(),
                  ),
                );
              },
            ),
          ],
          padding: EdgeInsets.all(10),
          shrinkWrap: true,
          reverse: false,
        )
    );
  }

}
class AppDrawer extends StatefulWidget {
  @override
  _AppDrawerState createState() => new _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  @override
  Widget build(BuildContext context) {
    return new Drawer(
      child: new ListView(
        children: <Widget>[
          new DrawerHeader(
            child: new Image.asset(
              'assets/images/logos/aiims_logo.jpg',
            ),
          ),
          new Padding(
            padding: const EdgeInsets.all(7.0),
            child: Container(
              color: Color(0xFF849AA3),
              child: ListTile(
                title: const Text(
                  'Logos',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => logo_page(),
                    ),
                  );
                },
              ),
            ),
          ),
          new Padding(
            padding: const EdgeInsets.all(7.0),
            child: Container(
              color: Color(0xFF849AA3),
              child: ListTile(
                title: const Text(
                  'Contact',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => logo_page(),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}