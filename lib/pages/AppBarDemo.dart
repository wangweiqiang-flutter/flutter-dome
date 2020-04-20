import 'package:flutter/material.dart';

class AppBarDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('app tabs demo'),
          centerTitle: true,
          backgroundColor: Colors.pink,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            ),
          ],
          bottom: TabBar(
            tabs: <Widget>[Tab(text: '热门1'), Tab(text: '推荐')],
          ),
         ),
        body: TabBarView(
          children: <Widget>[
            ListView(
              children: <Widget>[
                ListTile(
                  title: Text('热门第一个tabs'),
                ),
                ListTile(
                  title: Text('热门第二个tabs'),
                )
              ],
            ),
            ListView(
              children: <Widget>[
                ListTile(
                  title: Text('推荐第一个tabs'),
                ),
                ListTile(
                  title: Text('推荐第二个tabs'),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
