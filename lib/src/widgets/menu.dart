import 'package:flutter/material.dart';
import 'package:recipes_app/src/styles/styles.dart';

Drawer menu(context) {
  return Drawer(
    elevation: 0.0,
    child: Container(
      color: colorBG,
      child: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/recipe1.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: Container(
              alignment: Alignment.center,
              child: Text('RECIPE APP', style: textMenu),
            ),
          ),
          ListTile(
            leading: Icon(Icons.fastfood, color: colorIcon),
            title: Text('Categories'),
            onTap: () {
              Navigator.pushNamed(context, 'categories');
            },
          ),
          ListTile(
            leading: Icon(Icons.fastfood, color: colorIcon),
            title: Text('Categories'),
            onTap: () {
              Navigator.pushNamed(context, 'categories');
            },
          ),
        ],
      ),
    ),
  );
}
