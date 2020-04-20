import 'package:flutter/material.dart';

import 'package:date_format/date_format.dart';

class FormDome extends StatefulWidget {
  @override
  _FormDomeState createState() => _FormDomeState();
}

class _FormDomeState extends State<FormDome> {
  int sex = 1;
  String usename;
  List hobby = [
    {
      "checked": true,
      "title": '写代码'
    },
    {
      "checked": true,
      "title": '吃饭'
    },{
      "checked": true,
      "title": '睡觉'
    }
  ];
  var now = DateTime.now();

  List<Widget> _hobby() {
    List<Widget> tempList = [];
    this.hobby.forEach((item){
      tempList.add(
        Row(
          children: <Widget>[
            Text(item['title'] + ':'),
            Checkbox(
              value: item['checked'],
              onChanged: (v) {
                setState(() {
                  item['checked'] = v;
                });
              },
            )
          ],
        )
      );
    });
    return tempList;
  }
  void _sexChange(value) {
    setState(() {
      this.sex = value;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print(this.now);
    print(this.now.millisecondsSinceEpoch);
    print(DateTime.fromMicrosecondsSinceEpoch(this.now.millisecondsSinceEpoch));
    print(formatDate(this.now, [yyyy, '-', mm, '-', dd]));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('form dome'),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            TextField(
              decoration:
                  InputDecoration(hintText: "输入用户信息", labelText: '输入用户信息'),
              onChanged: (v) {
                setState(() {
                  this.usename = v;
                });
              },
            ),
            Row(
              children: <Widget>[
                Text('男'),
                Radio(
                  value: 1,
                  onChanged: this._sexChange,
                  groupValue: this.sex,
                ),
                SizedBox(width: 20),
                Text('女'),
                Radio(
                  value: 2,
                  onChanged: this._sexChange,
                  groupValue: this.sex,
                ),
              ],
            ),
            SizedBox(height: 10),
            Column(
              children: <Widget>[
                Row(
                  children: this._hobby()
                ),
                Row(
                  children: <Widget>[
                    Text('wowowowowowo'),
                  ],
                ),
              ],
            ),
            SizedBox(height: 40),
            Container(
              width: double.infinity,
              height: 40.0,
              child: RaisedButton(
                child: Text('登录'),
                onPressed: () {
                  print(this.sex);
                  print(this.usename);
                  print(this.hobby);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
