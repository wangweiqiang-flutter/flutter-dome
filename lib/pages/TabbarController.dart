import 'package:flutter/material.dart';

class TabBarController extends StatefulWidget {
  TabBarController({ Key key }) : super(key: key);
  @override
  _TabBarControllerState createState() => _TabBarControllerState();
}

class _TabBarControllerState extends State<TabBarController> with SingleTickerProviderStateMixin {
  TabController  _tabController;
  @override
  void initState() { // 生命周期
    // TODO: implement initState
    super.initState();
    _tabController = new TabController(
      vsync: this,
      length: 2
    );
    // 使用tabController可以实现监听的方法  DefaultTabController 不行
    _tabController.addListener((){
      print(_tabController.index);
    });
  }

  @override
  void dispose() { // 生命周期销毁 - 可以不写
    // TODO: implement dispose
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('tabBarController'),
        bottom: TabBar(
          controller: this._tabController,
          tabs: <Widget>[
            Tab(text: '热门'),
            Tab(text: '推荐'),
          ],
        ),
      ),
      body: TabBarView(
        controller: this._tabController,
        children: <Widget>[
          Center(
            child: Text('热门tab1'),
          ), Center(
            child: Text('推荐tab1'),
          )
        ],
      ),
    );
  }
}
