import 'package:flutter/material.dart';
import 'package:recipes_app/src/styles/styles.dart';

Widget appBarDetail(String title) {
  return SliverAppBar(
    backgroundColor: colorBG,
    expandedHeight: 250.0,
    floating: false,
    pinned: true,
    elevation: 0.0,
    title: Text(
      title,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        color: colorTitle,
      ),
    ),
    iconTheme: IconThemeData(
      color: colorIconAppbar,
    ),
    flexibleSpace: FlexibleSpaceBar(
      background: FadeInImage(
        placeholder: AssetImage('assets/images/recipe2.jpg'),
        image: AssetImage('assets/images/recipe2.jpg'),
        fadeInDuration: Duration(microseconds: 150),
        fit: BoxFit.cover,
      ),
    ),
  );
}
