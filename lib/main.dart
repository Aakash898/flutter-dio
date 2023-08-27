import 'package:flutter/material.dart';
import 'package:flutterdioample/utils/routes_name.dart';
import 'package:flutterdioample/views/login/login_screen.dart';
import 'package:flutterdioample/viewmodels/login_view_model.dart';
import 'package:flutterdioample/views/task/task.dart';
import 'package:provider/provider.dart';

import 'views/home/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => LoginViewModel(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: LoginScreen(),
        routes: {
          RoutesName.home: (context) => HomeScreen(),
        },
      ),
    );
  }
}
