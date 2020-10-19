import 'package:flutter/material.dart';
import 'package:recipes_app/src/styles/styles.dart';

Widget textRecipe() {
  return Column(
    children: [
      Container(
        alignment: AlignmentDirectional.topStart,
        margin: EdgeInsets.only(left: 15.0, top: 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Cơm nhà',
              textAlign: TextAlign.left,
              style: titleRecipeStyle,
            ),
            Text(
              'Chay thanh đạm lại đủ năng lượng với tinh bột dồi dào từ bí đỏ và protein healthy từ đậu hũ. Mọi người có thể dùng đậu hũ trắng để giảm...',
              textAlign: TextAlign.left,
              style: desciptionRecipeStyle,
            ),
            Container(
              child: Row(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        Icon(Icons.alarm, color: colorIcon),
                        Container(
                          child: Text('kshd'),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ],
  );
}
