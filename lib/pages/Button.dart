import 'package:flutter/material.dart';

// onPressed: null  禁用
class Button extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('button-demo'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add, color: Colors.blue, size: 24),
        backgroundColor: Colors.yellow,
        onPressed: () {
          print('浮动按钮');
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                child: Text('普通按钮'),
                onPressed: () {
                  print('普通按钮');
                },
              ),
              SizedBox(width: 10),
              RaisedButton(
                child: Text('颜色背景按钮'),
                color: Colors.pink,
                textColor: Colors.blue,
                onPressed: () {
                  print('颜色背景按钮');
                },
              ),
              SizedBox(width: 10),
              RaisedButton(
                child: Text('阴影按钮'),
                color: Colors.blue,
                textColor: Colors.white,
                elevation: 60,
                onPressed: () {
                  print('阴影按钮');
                },
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 40.0,
                width: 160.0,
                child: RaisedButton(
                  child: Text('可以设置宽高的按钮'),
                  onPressed: () {
                    print('可以设置宽高的按钮');
                  },
                ),
              ),
              SizedBox(
                width: 10,
              ),
              RaisedButton.icon(
                onPressed: () {
                  print('带有图标的按钮');
                },
                icon: Icon(Icons.accessible),
                label: Text('带有图标的按钮'),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: Container(
                  height: 60.0,
                  margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: RaisedButton(
                    child: Text('自适应按钮'),
                    onPressed: () {
                      print('自适应按钮');
                    },
                  ),
                ),
              ),
              SizedBox(width: 10),
              RaisedButton(
                child: Text('圆角按钮'),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                onPressed: () {
                  print('圆角按钮');
                },
              ),
              SizedBox(width: 10),
              RaisedButton(
                child: Text('圆角按钮'),
                shape: CircleBorder(
                    side: BorderSide(color: Colors.purple, width: 6.0)),
                onPressed: () {
                  print('圆角按钮');
                },
              )
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              MyButton(
                text: '自定义按钮',
                height: 38.0,
                width: 120.0,
                pressed: () {
                  print('自定义按钮');
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}

// 自定义按钮组件

class MyButton extends StatelessWidget {
  final text;
  final pressed;
  final double width;
  final double height;

  MyButton(
      {this.text = '我的按钮',
      this.pressed = null,
      this.width = 80.0,
      this.height = 32.0});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: this.height,
      width: this.width,
      child: RaisedButton(child: Text(this.text), onPressed: this.pressed),
    );
  }
}
