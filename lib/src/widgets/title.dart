import 'package:flutter/material.dart';
import 'package:recipes_app/src/styles/styles.dart';

Widget titles(String text, TextStyle styles) {
  return Container(
    alignment: AlignmentDirectional.topStart,
    margin: EdgeInsets.only(left: 20.0, top: 10.0),
    child: Text(
      text,
      style: styles,
    ),
  );
}
