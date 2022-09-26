import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 5,
              mainAxisSpacing: 1,
              mainAxisExtent: 220,
              childAspectRatio: 1
          ),
          children: [
            GestureDetector (
              child: Card(
                color: Colors.teal,
                semanticContainer: true,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Column(
                  children: <Widget>[
                    Text('KHAND A',style: TextStyle(fontSize: 35,fontWeight: FontWeight. bold),),

                    Container(
                      padding: EdgeInsets.fromLTRB(15,20,15,15),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(15.0),
                          child: Image.asset('assets/images/example.jpg')),
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
                    builder: (context) => new_f(),
                  ),
                );
              },
            ),

            Card(
              color: Color(0xFF91D72C),
              semanticContainer: true,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Column(
                children: <Widget>[
                  Text('KHAND B',style: TextStyle(fontSize: 35,fontWeight: FontWeight. bold),),
                  Container(
                    padding: EdgeInsets.fromLTRB(15,20,15,15),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(15.0),
                        child: Image.asset('assets/images/example.jpg')),
                  ),
                ],
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              elevation: 5,
              margin: EdgeInsets.all(10),

              /*child: ClipRRect( // Clip it cleanly.
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
                    child: Container(
                      color: Colors.grey.withOpacity(0.1),
                      alignment: Alignment.center,
                      child: Text('CHOCOLATE'),
                    ),
                  ),
                ),*/
            ),

            Card(
              color: Color(0xFFB80F03),
              semanticContainer: true,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Column(
                children: <Widget>[
                  Text('KHAND C',style: TextStyle(fontSize: 35,fontWeight: FontWeight. bold),),
                  Container(
                    padding: EdgeInsets.fromLTRB(15,20,15,15),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(15.0),
                        child: Image.asset('assets/images/example.jpg')),
                  ),
                ],
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              elevation: 5,
              margin: EdgeInsets.all(10),
            ),
            Card(
              color: Color(0xFF0443A1),
              semanticContainer: true,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Column(
                children: <Widget>[
                  Text('KHAND D',style: TextStyle(fontSize: 35,fontWeight: FontWeight. bold),),
                  Container(
                    padding: EdgeInsets.fromLTRB(15,20,15,15),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(15.0),
                        child: Image.asset('assets/images/example.jpg')),
                  ),
                ],
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              elevation: 5,
              margin: EdgeInsets.all(10),
            ),

            Card(
              color: Color(0xFFCD600D),
              semanticContainer: true,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Column(
                children: <Widget>[
                  Text('KHAND E',style: TextStyle(fontSize: 35,fontWeight: FontWeight. bold),),
                  Container(
                    padding: EdgeInsets.fromLTRB(15,20,15,15),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(15.0),
                        child: Image.asset('assets/images/example.jpg')),
                  ),
                ],
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              elevation: 5,
              margin: EdgeInsets.all(10),
            ),
            Card(
              color: Color(0xFF840678),
              semanticContainer: true,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Column(
                children: <Widget>[
                  Text('KHAND F',style: TextStyle(fontSize: 35,fontWeight: FontWeight. bold),),
                  Container(
                    padding: EdgeInsets.fromLTRB(15,20,15,15),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(15.0),
                        child: Image.asset('assets/images/example.jpg')),
                  ),
                ],
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              elevation: 5,
              margin: EdgeInsets.all(10),
            ),
            Card(
              color: Color(0xFF5510A1),
              semanticContainer: true,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Column(
                children: <Widget>[
                  Text('KHAND G',style: TextStyle(fontSize: 35,fontWeight: FontWeight. bold),),
                  Container(
                    padding: EdgeInsets.fromLTRB(15,20,15,15),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(15.0),
                        child: Image.asset('assets/images/example.jpg')),
                  ),

                ],
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              elevation: 5,
              margin: EdgeInsets.all(10),

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