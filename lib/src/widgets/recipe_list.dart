import 'package:flutter/material.dart';
import 'package:recipes_app/src/styles/styles.dart';
import 'package:recipes_app/src/widgets/text_recipe.dart';

Widget recipeList(BuildContext context) {
  return Column(
    children: [
      SizedBox(
        height: 10.0,
      ),
      GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, 'detail');
        },
        child: Image(
          image: AssetImage('assets/images/recipe1.jpg'),
          fit: BoxFit.cover,
          width: 370.0,
          height: 150.0,
        ),
      ),
      textRecipe(titleRecipeStyle),
    ],
  );
}
