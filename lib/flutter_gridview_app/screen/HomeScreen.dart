import 'package:flutter/material.dart';
import '../model/Item.dart';
import 'ItemList.dart';

class HomeScreen extends StatelessWidget {
  late List<Item> itemList;

  @override
  Widget build(BuildContext context) {
    itemList = _itemList();

    return Scaffold(
      appBar: AppBar(
        title: Text('Movies'),
      ),
      body: _gridView(),
    );
  }

  Widget _gridView() {
    return GridView.count(
      crossAxisCount: 2,
      padding: EdgeInsets.all(4.0),
      childAspectRatio: 8.0 / 9.0,
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
        imageUrl: 'assets/images/example.jpg',
        trailerImg1: 'assets/images/example.jpg',
        trailerImg2: 'assets/images/example.jpg',
      ),
      Item(
        id: 1,
        name: 'KHAND B',
        bannerUrl: 'assets/images/example.jpg',
        imageUrl: 'assets/images/example.jpg',
        trailerImg1: 'assets/images/example.jpg',
        trailerImg2: 'assets/images/example.jpg',
      ),
      Item(
        id: 2,
        name: 'KHAND C',
        bannerUrl: 'assets/images/example.jpg',
        imageUrl: 'assets/images/example.jpg',
        trailerImg1: 'assets/images/example.jpg',
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