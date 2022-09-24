import 'package:flutter/material.dart';
import 'package:mai/flutter_gridview_app/model/Item.dart';
import 'package:mai/flutter_gridview_app/screen/GetRatings.dart';

class GridItemDetails extends StatelessWidget {
  final Item item;

  GridItemDetails(this.item);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      primary: true,
      appBar: AppBar(
        title: Text(item.name),
      ),
      backgroundColor: Colors.blueAccent,
      body: ListView(
        children: <Widget>[
          HeaderBanner(this.item),
          //GetTags(),
          Container(
            padding: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 20.0),

          ),
          InkWell(
            onTap: () => {},
            child: Container(
              margin: EdgeInsets.fromLTRB(50.0, 5.0, 50.0, 5.0),
              width: 80.0,
              height: 40.0,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30.0),
              ),
              child: Center(
                child: Text(
                  'Watch Movies',
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),

        ],
        // ),
        //],
      ),
    );
  }
}

class GetTags extends StatelessWidget {
  GetTags();

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.fromLTRB(5.0, 0.0, 5.0, 10.0),
      height: 35.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          InkWell(
            onTap: () => {},
            child: Container(
              width: 100.0,
              height: 35.0,
              margin: EdgeInsets.only(
                left: 5.0,
                right: 5.0,
              ),
              decoration: BoxDecoration(
                color: Color(0xFF761322),
                border: Border.all(color: Colors.black, width: 1.0),
                borderRadius: BorderRadius.circular(30.0),
              ),

            ),
          ),
          InkWell(
            onTap: () => {},
            child: Container(
              width: 100.0,
              height: 35.0,
              margin: EdgeInsets.only(
                left: 5.0,
                right: 5.0,
              ),
              decoration: BoxDecoration(
                color: Colors.black12,
                border: Border.all(color: Colors.black, width: 1.0),
                borderRadius: BorderRadius.circular(30.0),
              ),

            ),
          ),
          InkWell(
            onTap: () => {},
            child: Container(
              width: 100.0,
              height: 35.0,
              margin: EdgeInsets.only(
                left: 5.0,
                right: 5.0,
              ),
              decoration: BoxDecoration(
                color: Color(0xFF761322),
                border: Border.all(color: Colors.white, width: 1.0),
                borderRadius: BorderRadius.circular(30.0),
              ),

            ),
          ),
        ],
      ),
    );
  }
}

class SetTagsItem extends StatelessWidget {
  final String tag;

  SetTagsItem(this.tag);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => {},
      child: Container(
        width: 100.0,
        height: 35.0,
        margin: EdgeInsets.only(
          left: 5.0,
          right: 5.0,
        ),
        decoration: BoxDecoration(
          color: Color(0xFF761322),
          border: Border.all(color: Colors.white, width: 1.0),
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: Center(
          child: Text(
            tag,
            style: TextStyle(fontSize: 16.0, color: Colors.white),
          ),
        ),
      ),
    );
  }
}

class HeaderBanner extends StatelessWidget {
  final Item item;

  HeaderBanner(this.item);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 0.0,
      child: Container(
        height: 380.0,
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            HeaderImage(this.item.bannerUrl),
            HeaderContent(this.item),
          ],
        ),
      ),
    );
  }
}

class HeaderImage extends StatelessWidget {
  final String bannerUrl;

  HeaderImage(this.bannerUrl);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      bannerUrl,
      width: 600.0,
      height: 380.0,
      fit: BoxFit.cover,
    );
  }
}

class HeaderContent extends StatelessWidget {
  final Item item;

  HeaderContent(this.item);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomLeft,
      child: Container(
        //color: Colors.black.withOpacity(0.1),
        constraints: BoxConstraints.expand(
          height: 110.0,
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
          child: Container(
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.only(bottom: 1.0),
                        child: Text(
                          item.name,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          style: TextStyle(
                            fontSize: 26.0,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),


                    ],
                  ),
                ),
              ],
            ),
          ),
          //child:
        ),
      ),
    );
  }
}

class GetTrailers extends StatelessWidget {
  final Item item;

  GetTrailers(this.item);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 10.0),
      height: 100.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(

          ),
          Container(
            padding: const EdgeInsets.only(left: 5.0),

          ),
          Container(
            padding: const EdgeInsets.only(left: 5.0),

          ),
        ],
      ),
    );
  }
}
