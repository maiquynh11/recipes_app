import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class swiperPopular extends StatelessWidget {
  final controller = PageController(initialPage: 1, viewportFraction: 1);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.0,
      padding: EdgeInsets.only(left: 20.0, right: 20.0, bottom: 15.0),
      child: Swiper(
        itemBuilder: (BuildContext context, int index) {
          return PageView(
            controller: controller,
            children: [
              _card(),
              _card(),
              _card(),
            ],
          );
        },
        itemCount: 1,
        layout: SwiperLayout.DEFAULT,
      ),
    );
  }
}

Widget _card() {
  return Container(
    // margin: EdgeInsets.only(left: 10.0, right: 10.0),
    child: Image(
        image: AssetImage('assets/images/recipe1.jpg'),
        width: 200.0,
        height: 150,
        fit: BoxFit.cover),
  );
}
