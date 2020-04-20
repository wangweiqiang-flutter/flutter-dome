import 'package:flutter/material.dart';
class EndDrawerPage extends StatefulWidget {
  @override
  _EndDrawerPageState createState() => _EndDrawerPageState();
}

class _EndDrawerPageState extends State<EndDrawerPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child:  Drawer(
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: UserAccountsDrawerHeader(
                    accountName: Text('测试userAccountsDrawerHeader'),
                    accountEmail: Text('wwww@163.com'),
                    currentAccountPicture: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=2849035263,1311597361&fm=26&gp=0.jpg'),
                    ),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                                'https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=2679052545,42857013&fm=26&gp=0.jpg'),
                            fit: BoxFit.cover)),
                  ),
                )
              ],
            ),
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.home),
              ),
              title: Text('我的空间'),
            ),
            Divider(),
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.people),
              ),
              title: Text('用户中心'),
            )
          ],
        ),
      ),
    );
  }
}
