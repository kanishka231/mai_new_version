import 'package:meta/meta.dart';

class Item {
  int id;
  String name;
  //String desc;
  String imageUrl;
  String bannerUrl;
  String trailerImg1;
  String trailerImg2;

  Item({
    required this.id,
    required this.name,
    //required this.desc,
    required this.imageUrl,
    required this.bannerUrl,
    required this.trailerImg1,
    required this.trailerImg2,
  });
}