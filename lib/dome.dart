import 'package:flutter/material.dart';
//import 'package:my_app/main.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'wangweiqiang-test-flutter',
      home: Scaffold(
        appBar: new AppBar(title: new Text('list widget')),
        body: GridView.count(
          padding: const EdgeInsets.all(20.0),
          crossAxisSpacing: 10.0,
          crossAxisCount: 3,
          children: <Widget>[
            const Text('first'),
            const Text('second'),
            const Text('three'),
            const Text('four'),
            const Text('five'),
            const Text('six'),
            new Container(
                width: 180.0,
                color: const Color(0xe8e8e8ff)
            ), new Container(
                width: 180.0,
                color: Colors.purple
            ), new Container(
                width: 180.0,
                color: Colors.greenAccent
            ), new Container(
                width: 180.0,
                color: Colors.pink
            ),
          ],
        ),
      ),
    );
  }
}

class MyList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        new Container(
            width: 180.0,
            color: const Color(0xe8e8e8ff)
        ), new Container(
            width: 180.0,
            color: Colors.purple
        ), new Container(
            width: 180.0,
            color: Colors.greenAccent
        ),
      ],
    );
  }
}