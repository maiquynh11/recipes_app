import 'package:flutter/material.dart';
import 'package:recipes_app/src/styles/styles.dart';
import 'package:recipes_app/src/widgets/app_bar_categories.dart';
import 'package:recipes_app/src/widgets/recipe_list.dart';
import 'package:recipes_app/src/widgets/title.dart';

class Categories extends StatelessWidget {
  // final GlobalKey<ScaffoldState> = _scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // drawer: menu,
      backgroundColor: colorBG,
      body: CustomScrollView(
        slivers: [
          appBarCategories('Pizza'),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                // Column(
                //   children: [
                //     title('pizza'),
                //     swiperPopular(),
                //   ],
                // ),
                // titles('Pizza', titleStyleCategories),
                recipeList(context),
                recipeList(context),
                recipeList(context),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
