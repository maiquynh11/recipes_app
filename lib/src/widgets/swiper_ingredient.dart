import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

final controller = PageController(
  initialPage: 1,
  viewportFraction: 0.35,
);
Widget swiperIngredient() {
  return Container(
    height: 85.0,
    padding: EdgeInsets.only(left: 20.0, right: 20.0),
    child: Swiper(
      itemCount: 3,
      layout: SwiperLayout.DEFAULT,
      itemBuilder: (BuildContext context, int index) {
        return PageView(
          controller: controller,
          children: [
            _image(),
            _image(),
            _image(),
            _image(),
          ],
        );
      },
    ),
  );
}

Widget _image() {
  return Container(
    margin: EdgeInsets.only(right: 10.0),
    child: Image(
      alignment: Alignment.topLeft,
      image: AssetImage('assets/images/recipe1.jpg'),
    ),
  );
}
