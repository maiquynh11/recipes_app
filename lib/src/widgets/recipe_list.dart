import 'package:flutter/material.dart';
import 'package:recipes_app/src/widgets/text_recipe.dart';

Widget recipeList() {
  return Column(
    children: [
      GestureDetector(
        onTap: () {},
        child: Image(
          image: AssetImage('assets/images/recipe1.jpg'),
          fit: BoxFit.cover,
          width: 370.0,
          height: 150.0,
        ),
      ),
      textRecipe(),
    ],
  );
}
