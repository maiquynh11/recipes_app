import 'package:flutter/material.dart';
import 'package:recipes_app/src/styles/styles.dart';
import 'package:recipes_app/src/widgets/app_bar_detail.dart';
import 'package:recipes_app/src/widgets/swiper_ingredient.dart';
import 'package:recipes_app/src/widgets/text_recipe.dart';
import 'package:recipes_app/src/widgets/title.dart';

class DetailPage extends StatelessWidget {
  final String desciption =
      'Hồi nhỏ mình vô cùng tiểu thư nên chưa từng ăn thử rau lang, có một lần mẹ không có nhà, bố đi xin được một nắm về nấu món này và bảo con nhất định ăn thử đi, ngon lắm đó. Kể từ đó bất kể khi nào nhìn thấy rau này là mình muốn ăn nó ngay lập tức, vì thật sự canh ngọt, đưa cơm mà lại rất mát nữa.';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorBG,
      body: CustomScrollView(
        slivers: [
          appBarDetail('pizza'),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                textRecipe(titleRecipeStyleDetail),
                titles('Thành phần', titleStyle),
                SizedBox(
                  height: 10.0,
                ),
                swiperIngredient(),
                SizedBox(
                    // height: 20.0,
                    ),
                titles('Chuẩn bị', titleStyle),
                _textDesciption(desciption),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget _textDesciption(String text) {
  return Container(
    padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 5.0),
    child: Text(
      text,
      textAlign: TextAlign.justify,
      style: TextStyle(
        color: Color.fromRGBO(15, 55, 91, 1),
        fontSize: 15.0,
      ),
    ),
  );
}
