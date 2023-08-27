import 'package:flutter/material.dart';
import 'package:flutterdioample/login_screen.dart';
import 'package:flutterdioample/task.dart';

import 'home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyDynamicList(),
    );
  }
}
