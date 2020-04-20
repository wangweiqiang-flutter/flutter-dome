import "package:flutter/material.dart";

class Setting extends StatefulWidget {
  @override
  _SettingState createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        RaisedButton(
          child: Text('to appbar tabs deom'),
          onPressed: () {
            Navigator.pushNamed(context, '/appbardemo');
          },
        ),
      ],
    );
  }
}
