import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class swiperCategories extends StatelessWidget {
  final controller = PageController(
    initialPage: 1,
    viewportFraction: 0.35,
  );
  @override
  Widget build(BuildContext context) {
    return Container(
      // width: 350.0,
      padding: EdgeInsets.only(left: 20.0, right: 20.0),
      height: 100.0,
      child: Swiper(
        itemBuilder: (BuildContext context, int index) {
          return PageView(
            controller: controller,
            children: [
              _imageCategories(context),
              _imageCategories(context),
              _imageCategories(context),
              _imageCategories(context)
            ],
          );
        },
        itemCount: 3,
        layout: SwiperLayout.DEFAULT,
      ),
    );
  }
}

Widget _imageCategories(BuildContext context) {
  return GestureDetector(
    onTap: () {
      Navigator.pushNamed(context, 'categories');
    },
    child: Container(
      margin: EdgeInsets.only(right: 10.0),
      child: Image(image: AssetImage('assets/images/recipe2.jpg')),
    ),
  );
}
