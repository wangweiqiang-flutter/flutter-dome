import 'package:flutter/material.dart';

import 'tabs/Home.dart';
import 'tabs/Category.dart';
import 'tabs/Setting.dart';
import 'public/drawer/Drawer.dart';
import 'public/drawer/EndDrawer.dart';

class Tabs extends StatefulWidget {
  final index;

  Tabs({Key key, this.index = 0}) : super(key: key);

  @override
  _TabsState createState() => _TabsState(this.index);
}

class _TabsState extends State<Tabs> {
  int _currentIndex = 0;

  _TabsState(index) {
    this._currentIndex = index;
  }

  List _pageList = [Home(), Category(), Setting()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('header'),
        ),
        floatingActionButton: Container(
          height: 68.0,
          width: 68.0,
          padding: EdgeInsets.all(6),
          margin: EdgeInsets.only(top: 2),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(34),
            color: Colors.white
          ),
          child: FloatingActionButton(
            child: Icon(Icons.add),
            backgroundColor: this._currentIndex == 1 ? Colors.lightBlue : Colors.yellow,
            onPressed: () {
              setState(() {
                this._currentIndex = 1;
              });
              print('首页浮动按钮');
            },
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        body: this._pageList[this._currentIndex],
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: this._currentIndex,
            type: BottomNavigationBarType.fixed, // 可以有多个按钮
            onTap: (int index) {
              setState(() {
                this._currentIndex = index;
              });
            },
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home), title: Text('首页')),
              BottomNavigationBarItem(
                  icon: Icon(Icons.category), title: Text('分类')),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings), title: Text('设置')),
            ]),
        drawer: Drawerpage(),
        endDrawer: EndDrawerPage());
  }
}
