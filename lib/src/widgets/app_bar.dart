import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';

Widget appBar(BuildContext context, GlobalKey<ScaffoldState> key) {
  return SliverAppBar(
    backgroundColor: Color.fromRGBO(244, 252, 255, 1.0),
    floating: false,
    leading: GestureDetector(
      onTap: () {
        key.currentState.openDrawer();
      },
      child: Container(
        // padding: EdgeInsets.all(),
        // child: IconButton(
        //   padding: EdgeInsets.all(12.0),
        //   icon: SvgPicture.asset(
        //     'assets/images/bars.svg',
        //   ),
        // ),
        child: Icon(
          Icons.menu,
          color: Color.fromRGBO(183, 195, 206, 1.0),
        ),
      ),
    ),
    actions: [
      Container(
        padding: EdgeInsets.all(15.0),
        child: Icon(
          Icons.search,
          color: Color.fromRGBO(183, 195, 206, 1.0),
        ),
      )
    ],
  );
}
