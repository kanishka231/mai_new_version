import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'flutter_gridview_app/constant/Constant.dart';
import 'flutter_gridview_app/screen/HomeScreen.dart';
import 'flutter_gridview_app/screen/SplashScreen.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    title: 'GridView Demo',
    home: SplashScreen(),
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primarySwatch: Colors.blueGrey,
      accentColor: Color(0xFF761322),
    ),
    routes: <String, WidgetBuilder>{
      SPLASH_SCREEN: (BuildContext context) => SplashScreen(),
      HOME_SCREEN: (BuildContext context) => HomeScreen(),
      //GRID_ITEM_DETAILS_SCREEN: (BuildContext context) => GridItemDetails(),
    },
  ));
}

