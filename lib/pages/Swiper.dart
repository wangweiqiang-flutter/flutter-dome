import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import '../assets/SwiperData.dart';
class SwiperInfo extends StatefulWidget {
  @override
  _SwiperInfoState createState() => _SwiperInfoState();
}

class _SwiperInfoState extends State<SwiperInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('swiper-page'),
      ),
      body: new Swiper(
        itemBuilder: (BuildContext context, int index) {
          return new Image.network(
            imgList[index]['url'], fit: BoxFit.fill,);
        },
        itemCount: imgList.length,
        pagination: new SwiperPagination(),
        control: new SwiperControl(),
      ),
    );
  }
}
