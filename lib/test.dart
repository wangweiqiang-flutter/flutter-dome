
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo wangweiqiang1021'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times',
              style: TextStyle(
                fontSize: 18.0,
                color: Color.fromARGB(255, 255, 150, 150),
              ),
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}


//动态传参
//import 'package:flutter/material.dart';
////import 'package:my_app/main.dart';
//void main() => runApp(MyApp(items: new List<String>.generate(100, (i) => '$i')));
//
//class MyApp extends StatelessWidget {
//  final List<String> items;
//  MyApp({Key key, @required this.items}):super(key: key);
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      title: 'wangweiqiang-test-flutter',
//      home: Scaffold(
//          appBar: new AppBar(title: new Text('list widget')),
//          body: new ListView.builder(
//            itemCount: items.length,
//            itemBuilder: (context, index){
//              return new ListTile(
//                  title: new Text('items ${items[index]}')
//              );
//            },
//          )
//      ),
//    );
//  }
//}
//
//class MyList extends StatelessWidget{
//  @override
//  Widget build(BuildContext context) {
//    return ListView(
//      scrollDirection: Axis.horizontal,
//      children: <Widget>[
//        new Container(
//            width: 180.0,
//            color: const Color(0xe8e8e8ff)
//        ), new Container(
//            width: 180.0,
//            color: Colors.purple
//        ), new Container(
//            width: 180.0,
//            color: Colors.greenAccent
//        ),
//      ],
//    );
//  }
//}

