import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: '网络剪切板',
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('网络剪切板'),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.only(top: 100.0),
          child: Column(
            children: <Widget>[
              Text('多终端同步文字信息, 最多50条'),
              Text('输入剪切板名称: public，密码: public，可以进行留言'),
              Padding(
                padding: EdgeInsets.only(top: 50.0, left: 40.0, right: 40.0),
                child: TextField(
                  autofocus: true,
                  decoration: InputDecoration(
                    labelText: '剪切板名称',
                  ),
                )
              ),
              Padding(
                padding: EdgeInsets.only(top: 30.0, left: 40.0, right: 40.0),
                child: TextField(
                  autofocus: true,
                  decoration: InputDecoration(
                    labelText: '剪切板密码',
                  ),
                )
              ),
              Padding(
                padding: EdgeInsets.only(top: 70.0),
                child: RaisedButton(
                  onPressed: () {},
                  colorBrightness: Brightness.light,
                  textTheme: ButtonTextTheme.primary,
                  child: const Text(
                    '开始使用',
                    style: TextStyle(fontSize: 20)
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ClipContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Clipboard Detail"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Go back!'),
        ),
      ),
    );
  }
}
