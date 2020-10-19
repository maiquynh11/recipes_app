import 'package:flutter/material.dart';
import 'package:recipes_app/src/styles/styles.dart';

Widget textRecipe() {
  return Column(
    children: [
      Container(
        alignment: AlignmentDirectional.topStart,
        margin: EdgeInsets.only(left: 20.0, top: 0.0, right: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 10.0),
            ),
            Text(
              'Cơm nhà',
              textAlign: TextAlign.left,
              style: titleRecipeStyle,
            ),
            Text(
              'Chay thanh đạm lại đủ năng lượng với tinh bột dồi dào từ bí đỏ và protein healthy từ đậu hũ. Mọi người có thể dùng đậu hũ trắng để giảm...',
              textAlign: TextAlign.justify,
              style: desciptionRecipeStyle,
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 10.0),
                        ),
                        Icon(Icons.alarm, color: colorIcon),
                        Container(
                          // padding: EdgeInsets.only(top: 10.0),
                          margin: EdgeInsets.only(left: 5.0),
                          child: Text(
                            '45 min',
                            style: TextStyle(
                              color: colorTitle,
                              fontSize: 13.0,
                              // fontFamily: '',
                              // fontWeight:
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Row(
                      children: [
                        Icon(Icons.fastfood, color: colorIcon),
                        Container(
                          // padding: EdgeInsets.only(bottom: 20.0),
                          margin: EdgeInsets.only(left: 5.0),
                          child: Text(
                            'Medium',
                            style: TextStyle(
                              color: colorTitle,
                              fontSize: 13.0,
                            ),
                          ),
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
