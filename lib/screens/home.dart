import 'package:flutter/material.dart';
import 'package:online_clipboard/screens/clip.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.only(top: 80.0),
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(bottom: 40.0),
                child:   Text(
                  '网络剪切板',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
              ),
              Text('多终端同步文字信息, 最多50条'),
              Text('输入剪切板名称: public，密码: public'),
              Text('可以进行留言'),
              LoginForm(),
              Padding(
                padding: EdgeInsets.only(top: 40.0),
                child:   Text(
                  '网页版: https://oc.to0l.cn',
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
              ),
              Text('v1.1.0'),
            ],
          ),
        ),
      ),
    );
  }
}

class LoginForm extends StatefulWidget {
  LoginForm({Key key}) : super(key: key);

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  String _clipname = '';
  String _password = '';
  final FocusNode _clipnameFocus = FocusNode();
  final FocusNode _passwordFocus = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(top: 30.0, left: 40.0, right: 40.0),
          child: TextField(
            focusNode: _clipnameFocus,
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
              labelText: '剪切板名称',
            ),
            onChanged: (String clipname) {
              _clipname = clipname;
            },
            onSubmitted: (String clipname) {
              _clipname = clipname;
              _clipnameFocus.unfocus();
              FocusScope.of(context).requestFocus(_passwordFocus);
            },
          )
        ),
        Padding(
          padding: EdgeInsets.only(top: 30.0, left: 40.0, right: 40.0),
          child: TextField(
            focusNode: _passwordFocus,
            obscureText: true,
            decoration: InputDecoration(
              labelText: '剪切板密码',
            ),
            onChanged: (String password) {
              _password = password;
            },
            onSubmitted: (String password) {
              _password = password;
              getIn();
            },
          )
        ),
        Padding(
          padding: EdgeInsets.only(top: 50.0),
          child: RaisedButton(
            onPressed: () {
              getIn();
            },
            colorBrightness: Brightness.light,
            textTheme: ButtonTextTheme.primary,
            child: const Text(
              '开始使用',
              style: TextStyle(fontSize: 20)
            ),
          ),
        ),
      ],
    );
  }

  void getIn() {
    if (_clipname != '' && _password != '') {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Clip(
            clipname: _clipname,
            password: _password,
          )
        )
      );
    }
  }
}