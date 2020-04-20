import "package:flutter/material.dart";
//import '../Form.dart';

class Category extends StatefulWidget {
  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        RaisedButton(
          child: Text('跳转到表单页面'),
          onPressed: () {
//            Navigator.of(context)
//                .push(MaterialPageRoute(builder: (context) => FormPage(title: 'form category')));
            Navigator.pushNamed(context, '/form', arguments: {
              "id": 123
            });
          },
          color: Theme
              .of(context)
              .accentColor,
          textTheme: ButtonTextTheme.primary,
        ),
        RaisedButton(
          child: Text('跳转到button页面'),
          onPressed: () {
//            Navigator.of(context)
//                .push(MaterialPageRoute(builder: (context) => FormPage(title: 'form category')));
            Navigator.pushNamed(context, '/button');
          },
          color: Theme
              .of(context)
              .accentColor,
          textTheme: ButtonTextTheme.primary,
        ),
        RaisedButton(
          child: Text('form deom'),
          onPressed: () {
            Navigator.pushNamed(context, '/formDome');
          },
        ),
      ],
    );
  }
}
