import 'package:flutter/material.dart';
import 'package:paix_app/category_items.dart';
import 'package:paix_app/dummy_data.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              alignment: Alignment.center,
              image: AssetImage('assets/images/paixbg.png'),
              fit: BoxFit.fill,
            ),
          ),
          child: GridView(
            padding: const EdgeInsets.symmetric(vertical: 200, horizontal: 15),
            children: DUMMY_CATEGORIES
                .map((catData) => CategoryItem(
                      catData.title,
                      catData.color,
                      catData.image,
                    ))
                .toList(),
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200.0,
              childAspectRatio: 2.7 / 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
          ),
        ),
      ),
    );
  }
}
//children: [
// Container(
// height: 90,
// child:
// ),
