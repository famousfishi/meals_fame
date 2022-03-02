import 'package:flutter/material.dart';
import 'package:meals_fame/widgets/category_item.dart';
import '../data/dummy_categories.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key? key}) : super(key: key);
  static const routeName = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Meals Fame'),
        ),
        body: GridView(
          padding: const EdgeInsets.all(25),
          children: dummycategories.map((categoryData) {
            return CategoryItem(
              title: categoryData.title,
              color: categoryData.color,
              categoryId: categoryData.id,
            );
          }).toList(),
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
              childAspectRatio: 3 / 2),
        ));
  }
}
