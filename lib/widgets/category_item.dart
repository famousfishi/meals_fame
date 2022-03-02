import 'package:flutter/material.dart';
import 'package:meals_fame/screens/categories_meals_screen.dart';

class CategoryItem extends StatelessWidget {
  final String title;
  final Color color;
  final String categoryId;

  // ignore: prefer_const_constructors_in_immutables, use_key_in_widget_constructors
  CategoryItem(
      {required this.title, required this.color, this.categoryId = ''});

  void selectCategory(BuildContext context) {
    // Navigator.of(context).push(MaterialPageRoute(builder: (_) {
    //   return CategoriesMealsScreen(
    //       categoryId: categoryId, categoryTitle: title);
    // }));

    Navigator.of(context).pushNamed(CategoriesMealsScreen.routeName,
        arguments: {'id': categoryId, 'title': title});
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectCategory(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: const EdgeInsets.all(15),
        child: Text(
          title,
          style: Theme.of(context).textTheme.caption,
        ),
        // color: color,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: <Color>[color.withOpacity(0.7), color],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight),
            borderRadius: BorderRadius.circular(15)),
      ),
    );
  }
}
