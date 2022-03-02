// ignore_for_file: constant_identifier_names

class Meal {
  final String id;
  final String title;
  final String imageUrl;
  final List<String> categories;
  final Complexity complexity;
  final List<String> ingredients;
  final List<String> steps;
  final int duration;
  final Affordability affordability;
  final bool isGlutenFree;
  final bool isLactoseFree;
  final bool isVegetarian;
  final bool isVegan;

  const Meal(
      {required this.id,
      required this.title,
      required this.imageUrl,
      required this.categories,
      required this.complexity,
      required this.ingredients,
      required this.steps,
      required this.duration,
      required this.affordability,
      required this.isGlutenFree,
      required this.isLactoseFree,
      required this.isVegetarian,
      required this.isVegan});
}

enum Complexity { Simple, Challenging, Hard }
enum Affordability { Affordable, Pricey, Luxurious }