import 'package:flutter/material.dart';
// import 'package:online_clipboard/common/theme.dart';
import 'package:online_clipboard/screens/clip.dart';
import 'package:online_clipboard/screens/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '网络剪切板',
      // theme: appTheme,
      initialRoute: '/',
      routes: {
        '/': (context) => Home(),
        '/clip': (context) => Clip(
          clipname: '',
          password: '',
        ),
      },
    );
  }
}
