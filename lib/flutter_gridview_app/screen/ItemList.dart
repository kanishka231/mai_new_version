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
        //color: Colors.teal,
        elevation: 5.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            AspectRatio(
              aspectRatio: 18.0 / 12.0,
              child: Image.asset(
                item.trailerImg1,
                //fit: BoxFit.cover,
              ),
            ),
            new Padding(
              padding: EdgeInsets.fromLTRB(4.0, 0.0, 4.0, 2.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    item.name,
                    //selectionColor: Colors.blue,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: TextStyle(
                      fontSize: 19.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  SizedBox(height: 0.0),
                  SizedBox(height: 2.0),

                ],
              ),
            ),
          ],
        ),
      ),

    );
  }
}


