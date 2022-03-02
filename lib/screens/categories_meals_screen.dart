import 'package:flutter/material.dart';
import 'package:meals_fame/data/dummy_categories.dart';
import 'package:meals_fame/widgets/meal_item.dart';

// ignore: use_key_in_widget_constructors
class CategoriesMealsScreen extends StatelessWidget {
  static const routeName = '/category-meals';
  // final String categoryId;
  // final String categoryTitle;

  // ignore: prefer_const_constructors_in_immutables, use_key_in_widget_constructors
  // CategoriesMealsScreen(
  //     {required this.categoryId, required this.categoryTitle});

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context)?.settings.arguments as Map<String, String>;
    final categoryTitle = routeArgs['title'] as String;
    final categoryId = routeArgs['id'] as String;
    final categoryMeals = dummymeals.where((meal) {
      return meal.categories.contains(categoryId);
    }).toList();
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (context, index) {
          return MealItem(
              id: categoryMeals[index].id,
              title: categoryMeals[index].title,
              imageUrl: categoryMeals[index].imageUrl,
              duration: categoryMeals[index].duration,
              complexity: categoryMeals[index].complexity,
              affordability: categoryMeals[index].affordability);
        },
        itemCount: categoryMeals.length,
      ),
      appBar: AppBar(
        title: Text(categoryTitle),
      ),
    );
  }
}
