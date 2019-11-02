import 'package:flutter/material.dart';
// import 'package:oc_flutter/common/theme.dart';
import 'package:oc_flutter/screens/clip.dart';
import 'package:oc_flutter/screens/home.dart';

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
