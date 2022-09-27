import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class logo_page extends StatefulWidget {
  logo_page({Key? key}) : super(key: key);
  @override
  _logo_pageState createState() => _logo_pageState();
}
class _logo_pageState extends State<logo_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(
          title: Text("Logos"),
        ),
        body: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1,
              crossAxisSpacing: 5,
              mainAxisSpacing: 1,
              mainAxisExtent: 445,
              childAspectRatio: 1
          ),
          children: [
            Card(
              //color: Color(0xFF849AA3),
              semanticContainer: true,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.fromLTRB(15,10,15,15),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(15.0),
                        child: Image.asset('assets/images/logos/aiims_logo.jpg',
                            fit: BoxFit.scaleDown)),
                  ),
                  Text('AIIMS Jodhpur',style: TextStyle(fontSize: 35,fontWeight: FontWeight. bold),),
                ],
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              elevation: 5,
              margin: EdgeInsets.all(10),
            ),
            Card(
              //color: Color(0xFF849AA3),
              semanticContainer: true,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Column(
                children: <Widget>[


                  Container(
                    padding: EdgeInsets.fromLTRB(15,10,15,15),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(15.0),
                        child: Image.asset('assets/images/logos/Tribal_logo.jpg')),
                  ),
                  Text('Ministry Of India',style: TextStyle(fontSize: 35,fontWeight: FontWeight. bold),),
                ],
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              elevation: 5,
              margin: EdgeInsets.all(10),
            ),

            Card(
              //color: Color(0xFF849AA3),
              semanticContainer: true,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Column(
                children: <Widget>[


                  Container(
                    padding: EdgeInsets.fromLTRB(15,10,15,15),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(15.0),
                        child: Image.asset('assets/images/logos/iitj_logo.jpg')),
                  ),
                  Text('IIT Jodhpur',style: TextStyle(fontSize: 35,fontWeight: FontWeight. bold),),
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