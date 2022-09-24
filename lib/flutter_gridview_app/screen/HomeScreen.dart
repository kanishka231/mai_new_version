import 'package:flutter/material.dart';
import 'package:mai/flutter_gridview_app/screen/vain.dart';
import '../model/Item.dart';
import 'ItemList.dart';
import 'vain.dart';

class HomeScreen extends StatelessWidget {
  late List<Item> itemList;
  var _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    itemList = _itemList();

    return Scaffold(
      key: _scaffoldKey,
      //drawer: new AppDrawer(), // left side
      endDrawer: new AppDrawer(), // right side
      appBar: AppBar(
        title: Text('MAAI'),
      ),
      body: _gridView(),
    );
  }

  Widget _gridView() {
    return GridView.count(
      crossAxisCount: 2,
      //mainAxisExtent: 390,
      padding: EdgeInsets.all(4.0),
      childAspectRatio: 9.0 / 11.0,
      children: itemList.map((Item) => ItemList(item: Item),
      ).toList(),
    );
  }

  List<Item> _itemList() {
    return [
      Item(
        id: 0,
        name: 'KHAND A',
        bannerUrl: 'assets/images/example.jpg',
        imageUrl: 'assets/images/logos/aiims_logo.jpg',
        trailerImg1: 'assets/images/logos/Tribal_logo.jpg',
        trailerImg2: 'assets/images/example.jpg',
      ),
      Item(
        id: 1,
        name: 'KHAND B',
        bannerUrl: 'assets/images/example.jpg',
        imageUrl: 'assets/images/example.jpg',
        trailerImg1: 'assets/images/logos/ministry_logo.jpg',
        trailerImg2: 'assets/images/example.jpg',
      ),
      Item(
        id: 2,
        name: 'KHAND C',
        bannerUrl: 'assets/images/example.jpg',
        imageUrl: 'assets/images/example.jpg',
        trailerImg1: 'assets/images/logos/aiims_logo.jpg',
        trailerImg2: 'assets/images/example.jpg',
      ),
      Item(
        id: 3,
        name: 'KHAND D',
        bannerUrl: 'assets/images/example.jpg',
        imageUrl: 'assets/images/example.jpg',
        trailerImg1: 'assets/images/example.jpg',
        trailerImg2: 'assets/images/example.jpg',
      ),
    ];
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