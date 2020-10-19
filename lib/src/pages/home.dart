// import 'dart:html';

import 'package:flutter/material.dart';
// import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:recipes_app/src/styles/styles.dart';
import 'package:recipes_app/src/widgets/app_bar.dart';
import 'package:recipes_app/src/widgets/menu.dart';
import 'package:recipes_app/src/widgets/recipe_list.dart';
import 'package:recipes_app/src/widgets/swiper.dart';
import 'package:recipes_app/src/widgets/swiper_categories.dart';
import 'package:recipes_app/src/widgets/title.dart';

class Home extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: menu(context),
      key: _scaffoldKey,
      backgroundColor: colorBG,
      body: CustomScrollView(
        slivers: [
          appBar(context, _scaffoldKey),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Column(
                  children: [
                    swiperPopular(),
                    titles('DANH MUC', titleStyle),
                    swiperCategories(),
                    titles('PHO BIEN', titleStyle),
                    SizedBox(
                      height: 10.0,
                    ),
                    recipeList(context),
                    recipeList(context),
                    recipeList(context),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
