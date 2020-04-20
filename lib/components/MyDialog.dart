import 'package:flutter/material.dart';
import 'dart:async';

// ignore: must_be_immutable
class MyDialog extends Dialog {
  String title;
  String content;

  MyDialog({this.title = '', this.content = ''});

  _showTime(context) {
    Timer.periodic(Duration(milliseconds: 3000), (t) {
      t.cancel();
      t = null;
      Navigator.pop(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    this._showTime(context);
    // TODO: implement build
    return Material(
      type: MaterialType.transparency,
      child: Center(
        child: Container(
          height: 200.0,
          width: 200.0,
          color: Colors.white,
          child: Column(
//          mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Stack(
                  children: <Widget>[
                    Align(
                      child: Text('${this.title}'),
                      alignment: Alignment.center,
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: InkWell(
                        child: Icon(Icons.delete),
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                    )
                  ],
                ),
              ),
              Divider(),
              Container(
                padding: EdgeInsets.all(12),
                width: double.infinity,
                child: Text(
                  '${this.content}',
                  textAlign: TextAlign.left,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
