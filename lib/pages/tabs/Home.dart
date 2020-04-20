import "package:flutter/material.dart";
import 'package:flutter_swiper/flutter_swiper.dart';

//import '../Search.dart';
import '../../assets/SwiperData.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
//      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
//          height: 150,
          width: double.infinity,
          child: AspectRatio(
            aspectRatio: 16 / 9,
            child: new Swiper(
                itemBuilder: (BuildContext context, int index) {
                  return new Image.network(
                    imgList[index]['url'],
                    fit: BoxFit.fill,
                  );
                },
                itemCount: imgList.length,
                pagination: new SwiperPagination(),
                control: new SwiperControl(),
                loop: true,
                autoplay: true),
          ),
        ),
        RaisedButton(
          child: Text('跳转到搜索页面'),
          onPressed: () {
//            Navigator.of(context)
//                .push(MaterialPageRoute(builder: (context) => Search()));
            Navigator.pushNamed(context, '/search');
          },
          color: Theme.of(context).accentColor,
          textTheme: ButtonTextTheme.primary,
        ),
        RaisedButton(
          child: Text('跳转到TabBarController页面'),
          onPressed: () {
            Navigator.pushNamed(context, '/tabBarController');
          },
          color: Theme.of(context).accentColor,
          textTheme: ButtonTextTheme.primary,
        ),
        RaisedButton(
          child: Text('跳转到Swiper页面'),
          onPressed: () {
            Navigator.pushNamed(context, '/swiper');
          },
          color: Theme.of(context).accentColor,
          textTheme: ButtonTextTheme.primary,
        ),
        RaisedButton(
          child: Text('跳转到dailog页面'),
          onPressed: () {
            Navigator.pushNamed(context, '/dialog');
          },
          color: Theme.of(context).accentColor,
          textTheme: ButtonTextTheme.primary,
        ),
        RaisedButton(
          child: Text('跳转到http页面'),
          onPressed: () {
            Navigator.pushNamed(context, '/http');
          },
          color: Theme.of(context).accentColor,
          textTheme: ButtonTextTheme.primary,
        )
      ],
    );
  }
}
