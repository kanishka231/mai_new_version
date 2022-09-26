import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mai/home.dart';

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
        body: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1,
              crossAxisSpacing: 5,
              mainAxisSpacing: 1,
              mainAxisExtent: 370,
              childAspectRatio: 1
          ),
          children: [
            Card(
              color: Color(0xFFB80F03),
              semanticContainer: true,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Column(
                children: <Widget>[
                  Text('Image',style: TextStyle(fontSize: 35,fontWeight: FontWeight. bold),),
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
            GestureDetector (
              child: Card(
                color: Colors.teal,
                semanticContainer: true,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Column(
                  children: <Widget>[
                    Text('Video',style: TextStyle(fontSize: 35,fontWeight: FontWeight. bold),),

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
                    builder: (context) => HomeScreen_1(),
                  ),
                );
              },
            ),
            Card(
              color: Color(0xFFB80F03),
              semanticContainer: true,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Column(
                children: <Widget>[
                  Text('Audio',style: TextStyle(fontSize: 35,fontWeight: FontWeight. bold),),
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
              color: Color(0xFFB80F03),
              semanticContainer: true,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Column(
                children: <Widget>[
                  Text('QUIZ',style: TextStyle(fontSize: 35,fontWeight: FontWeight. bold),),
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