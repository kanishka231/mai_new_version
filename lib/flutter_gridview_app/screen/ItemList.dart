import 'package:flutter/material.dart';
import 'package:mai/flutter_gridview_app/model/Item.dart';
import 'package:mai/flutter_gridview_app/screen/GetRatings.dart';
import 'package:mai/flutter_gridview_app/screen/GridItemDetails.dart';

class ItemList extends StatelessWidget {
  final Item item;

  const ItemList({required this.item});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => GridItemDetails(this.item),
          ),
        );
      },
      child: Card(
        color: Color(0xFF849AA3),
        elevation: 5.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              //color: Colors.cyan,
              padding: EdgeInsets.fromLTRB(15,20,15,15),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(15.0),
                  child: Image.asset(item.trailerImg1)),
            ),
            new Padding(
              padding: EdgeInsets.fromLTRB(4.0, 0.0, 4.0, 2.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    item.name,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: TextStyle(
                      fontSize: 22.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),

    );
  }
}


