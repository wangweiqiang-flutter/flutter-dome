import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:my_app/components/MyDialog.dart';

class DialogPage extends StatefulWidget {
  @override
  _DialogPageState createState() => _DialogPageState();
}

class _DialogPageState extends State<DialogPage> {
  void _alertDailog() {
    showDialog<void>(
      context: context,
      barrierDismissible: true,
      // false = user must tap button, true = tap outside dialog
      builder: (BuildContext dialogContext) {
        return AlertDialog(
          title: Text('title'),
          content: Text('dialogBody'),
          actions: <Widget>[
            FlatButton(
              child: Text('取消'),
              onPressed: () {
                Navigator.of(dialogContext).pop(); // Dismiss alert dialog
              },
            ),
            FlatButton(
              child: Text('确定'),
              onPressed: () {
                Navigator.pop(dialogContext); // Dismiss alert dialog
              },
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0)),
            ),
          ],
        );
      },
    );
  }

  _simapDailog() async {
    var resultInfo = await showDialog(
      context: context,
      builder: (context) {
        return SimpleDialog(
          title: Text('title'),
          children: <Widget>[
            SimpleDialogOption(
              child: Text('option a'),
              onPressed: () {
                Navigator.pop(context, 'a');
              },
            ),
            Divider(),
            SimpleDialogOption(
              child: Text('option b'),
              onPressed: () {
                Navigator.pop(context, 'b');
              },
            ),
            Divider(),
            SimpleDialogOption(
              child: Text('option c'),
              onPressed: () {
                Navigator.pop(context, 'c');
              },
            ),
            Divider(),
          ],
        );
      },
    );
    print(resultInfo);
  }

  _modalBottomSheetDailog() async {
    var result = await showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          height: 180.0,
          child: Column(
            children: <Widget>[
              ListTile(
                title: Text('分享a'),
                onTap: () {
                  _toastInfo();
                  Navigator.pop(context, 'a');
                },
              ),
              ListTile(
                title: Text('分享b'),
                onTap: () {
                  Navigator.pop(context, 'b');
                },
              )
            ],
          ),
        );
      },
    );
    print(result);
  }

  _toastInfo() {
    Fluttertoast.showToast(
        msg: "This is Center Short Toast",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('dailog'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              child: Text('alert弹出窗-AlertDialog'),
              onPressed: _alertDailog,
            ),
            SizedBox(height: 20),
            RaisedButton(
              child: Text('alert弹出窗-SimpleDialog'),
              onPressed: _simapDailog,
            ),
            SizedBox(height: 20),
            RaisedButton(
              child: Text('alert弹出窗-showModaleBottomSheet'),
              onPressed: _modalBottomSheetDailog,
            ),
            SizedBox(height: 20),
            RaisedButton(
              child: Text('alert弹出窗-自定义'),
              onPressed: () {
                showDialog(context: context,
                builder: (context) {
                  return MyDialog(title: '关于', content: '内容');
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
