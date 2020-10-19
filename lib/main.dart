import 'package:flutter/material.dart';
import 'package:recipes_app/src/pages/categories.dart';
import 'package:recipes_app/src/pages/detail.dart';
import 'package:recipes_app/src/pages/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder>{
        '/': (BuildContext context) => Home(),
        'categories': (BuildContext context) => Categories(),
        'detail': (BuildContext context) => DetailPage(),
      },
    );
  }
}
