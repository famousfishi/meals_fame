import 'package:flutter/material.dart';

class CategoriesMealsScreen extends StatelessWidget {
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
    return Scaffold(
      body: const Center(
        child: Text('The Recipes for the category'),
      ),
      appBar: AppBar(
        title: Text(categoryTitle),
      ),
    );
  }
}
