import 'package:flutter/material.dart';

// ignore: must_be_immutable
class FormPage extends StatefulWidget {
  final Map arguments;

  FormPage({Key key, this.arguments}) : super(key: key);

  @override
  _FormPageState createState() => _FormPageState(arguments: this.arguments);
}

class _FormPageState extends State<FormPage> {
  final Map arguments;
  var _username = new TextEditingController(); // 初始化为表单赋值
  var _password;

  _FormPageState({this.arguments});

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _username.text = 'init-data';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Text('返回'),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
      appBar: AppBar(
        title: Text('表单'),
        backgroundColor: Colors.pinkAccent,
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {},
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
        ],
      ),
      body: Container(
          height: double.infinity,
          padding: EdgeInsets.all(10),
          child: FormDemo()),
    );
  }
}

class FormDemo extends StatefulWidget {
  @override
  _FormDemoState createState() => _FormDemoState();
}

class _FormDemoState extends State<FormDemo> {
  var _usename;
  var flag = true;
  var sex = 1;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(height: 10),
        TextField(
          decoration: InputDecoration(
            hintText: '请输入搜索内容',
          ),
          controller: this._usename,
          onChanged: (value) {
            setState(() {
              _usename.text = value;
            });
          },
        ),
        SizedBox(height: 10),
        TextField(
          decoration: InputDecoration(
              hintText: '请输入搜索内容', border: OutlineInputBorder()),
        ),
        SizedBox(height: 10),
//        TextField(
//          maxLines: 4,
//          decoration: InputDecoration(
//            hintText: '请输入搜索内容',
//            border: OutlineInputBorder(),
//          ),
//        ),
        SizedBox(height: 10),
        TextField(
          obscureText: true,
          decoration: InputDecoration(
            hintText: '请输入密码',
            border: OutlineInputBorder(),
          ),
        ),
        SizedBox(height: 10),
        TextField(
          decoration: InputDecoration(
              hintText: '请输入', border: OutlineInputBorder(), labelText: '用户名'),
        ),
        SizedBox(height: 10),
        Row(
          children: <Widget>[
            Text('yes'),
            Checkbox(
              value: this.flag,
              onChanged: (v) {
                setState(() {
                  this.flag = v;
                });
                print(this.flag);
              },
            ),
            Text('男'),
            Radio(
              value: 1,
              onChanged: (v) {
                setState(() {
                  this.sex = v;
                });
              },
              groupValue: this.sex,
            ),
            Text('女'),
            Radio(
              value: 2,
              onChanged: (v) {
                setState(() {
                  this.sex = v;
                });
              },
              groupValue: this.sex,
            ),
            Row(
              children: <Widget>[
                Text(this.sex == 1 ? '男' : '女'),
              ],
            ),
          ],
        ),
        Container(
          child: CheckboxListTile(
            value: this.flag,
            onChanged: (v) {
              setState(() {
                this.flag = v;
              });
            },
            title: Text('标题'),
            subtitle: Text('二级标题'),
            secondary: Icon(Icons.home),
          ),
        ),
        RadioListTile(
          value: 1,
          onChanged: (v) {
            setState(() {
              this.sex = v;
            });
          },
          groupValue: this.sex,
          title: Text('标题'),
          subtitle: Text('二级标题'),
          secondary: Icon(Icons.home),
          selected: this.sex == 1,
        ),
        RadioListTile(
          value: 2,
          onChanged: (v) {
            setState(() {
              this.sex = v;
            });
          },
          groupValue: this.sex,
          title: Text('标题'),
          subtitle: Text('二级标题'),
          secondary: Icon(Icons.home),
          selected: this.sex == 2,
        ),
      ],
    );
  }
}
