import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:mai/flutter_gridview_app/screen/appeal_video.dart';
import 'package:mai/flutter_gridview_app/screen/intro_video.dart';
import 'package:mai/flutter_gridview_app/screen/menu_bar.dart';
import 'khand_A/screen_A.dart';
import 'khand_B/screen_B.dart';
import 'khand_C/screen_C.dart';
import 'khand_D/screen_D.dart';
import 'khand_E/screen_E.dart';
import 'khand_F/screen_F.dart';
import 'genralQuiz.dart';
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
          title: Text("माई"),
        ),
        body: ListView(
          children: [
            Container(
              padding: EdgeInsets.all(16.0),
              height: 100,
              width: 340,
              color: Colors.white,
              child: FloatingActionButton.extended(
                label: Text(
                  'सामान्य जानकारी भरें',
                  style: TextStyle(fontSize: 30, color: Colors.white),
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
                      builder: (context) => QuestionsScreen(),
                    ),
                  );
                },
              ),
            ),
            GestureDetector (
              child: Card(
                color: Colors.teal,
                semanticContainer: true,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Column(
                  children: <Widget>[
                    Text('परिचय',style: TextStyle(color:Colors.white,fontSize: 35,fontWeight: FontWeight. bold),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(15,15,15,15),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(15.0),
                          child: Image.asset('assets/images/imp_pics/1_intro_ss.jpg',height: 250,fit: BoxFit.fitHeight,)),
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
                color: Color(0xFFEC407A),
                semanticContainer: true,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Column(
                  children: <Widget>[
                    Text('1.ए एन सी जांच',style: TextStyle(color:Colors.white,fontSize: 35,fontWeight: FontWeight. bold),),
                    Container(
                      padding: EdgeInsets.fromLTRB(15,20,15,15),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(15.0),
                          child: Image.asset('assets/images/imp_pics/2_sarkaari_ss_1.jpg',height: 250,fit: BoxFit.fitHeight,)),
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
                color: Color(0xFF0097A7),
                semanticContainer: true,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Column(
                  children: <Widget>[
                    Text('2.स्तनपान',style: TextStyle(color:Colors.white,fontSize: 35,fontWeight: FontWeight. bold),),
                    Container(
                      padding: EdgeInsets.fromLTRB(15,20,15,15),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(15.0),
                          child: Image.asset('assets/images/imp_pics/4_maa_ka_dudh.jpg',height: 250,fit: BoxFit.fitHeight,)),
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
                color: Color(0xFF1565C0),
                semanticContainer: true,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Column(
                  children: <Widget>[
                    Text('3.बच्चे की देखभाल',style: TextStyle(color:Colors.white,fontSize: 35,fontWeight: FontWeight. bold),),
                    Container(
                      padding: EdgeInsets.fromLTRB(15,20,15,15),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(15.0),
                          child: Image.asset('assets/images/imp_pics/5_navjaat_dekhbhal.jpg',height: 250,fit: BoxFit.fitHeight,)),
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
                color: Color(0xFF7E57C2),
                semanticContainer: true,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Column(
                  children: <Widget>[
                    Text('4.माँ की देखभाल',style: TextStyle(color:Colors.white,fontSize: 35,fontWeight: FontWeight. bold),),
                    Container(
                      padding: EdgeInsets.fromLTRB(15,20,15,15),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(15.0),
                          child: Image.asset('assets/images/imp_pics/6_maa_ki_dekhbhal.jpg',height: 250,fit: BoxFit.fitHeight,)),
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
                color: Color(0xFF00838F),
                semanticContainer: true,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Column(
                  children: <Widget>[
                    Text('5.कम वजन वाले बच्चे',style: TextStyle(color:Colors.white,fontSize: 35,fontWeight: FontWeight. bold),),
                    Container(
                      padding: EdgeInsets.fromLTRB(15,20,15,15),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(15.0),
                          child: Image.asset('assets/images/imp_pics/7_kam_wajan_waale_bachhe.jpg',height: 250,fit: BoxFit.fitHeight,)),
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
                color: Color(0xFFE57373),
                semanticContainer: true,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Column(
                  children: <Widget>[
                    Text('6.टीकाकरण',style: TextStyle(color:Colors.white,fontSize: 35,fontWeight: FontWeight. bold),),
                    Container(
                      padding: EdgeInsets.fromLTRB(15,20,15,15),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(15.0),
                          child: Image.asset('assets/images/imp_pics/8_tikaakaran.jpg',height: 250,fit: BoxFit.fitHeight,)),
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
                color: Color(0xFFFF8A65),
                semanticContainer: true,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Column(
                  children: <Widget>[
                    Text('अपील',style: TextStyle(color:Colors.white,fontSize: 35,fontWeight: FontWeight. bold),),
                    Container(
                      padding: EdgeInsets.fromLTRB(15,20,15,15),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(15.0),
                          child: Image.asset('assets/images/imp_pics/9_nivedan.jpg',height: 250,fit: BoxFit.fitHeight,)),
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