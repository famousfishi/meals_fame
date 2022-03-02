import 'package:flutter/material.dart';
import 'package:meals_fame/data/dummy_categories.dart';
import 'package:meals_fame/models/meal.dart';

// ignore: use_key_in_widget_constructors
class MealDetailScreen extends StatelessWidget {
  static const routeName = '/meal-details';

  Widget buildSectionTitle(BuildContext context, String text) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 15),
      // height: (mediaQuery.size.height -
      //         appBar.preferredSize.height -
      //         mediaQuery.padding.top) *
      //     0.1,
      child: Text(
        text,
        style: Theme.of(context).textTheme.bodyText1,
      ),
    );
  }

  Widget buildContainer(Widget child) {
    return Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: Colors.grey)),
        margin: const EdgeInsets.all(15),
        padding: const EdgeInsets.all(10),
        // height: (mediaQuery.size.height -
        //         appBar.preferredSize.height -
        //         mediaQuery.padding.top) *
        //     0.4,
        height: 150,
        width: 300,
        child: child);
  }

  @override
  Widget build(BuildContext context) {
    // final mediaQuery = MediaQuery.of(context);

    final routeArgs = ModalRoute.of(context)?.settings.arguments as String;
    final mealId = routeArgs;
    Meal selectedMeal = dummymeals.firstWhere((meal) {
      return meal.id == mealId;
    });
    final appBar = AppBar(
      title: Text(selectedMeal.title),
    );

    return Scaffold(
      appBar: appBar,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              // height: (mediaQuery.size.height -
              //         appBar.preferredSize.height -
              //         mediaQuery.padding.top) *
              //     0.5,
              height: 300,
              child: Image.network(
                selectedMeal.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            buildSectionTitle(context, 'Ingredients'),
            buildContainer(
              ListView.builder(
                itemBuilder: (context, index) {
                  return Card(
                    color: Colors.amberAccent,
                    child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 5, horizontal: 10),
                        child: Text(selectedMeal.ingredients[index])),
                  );
                },
                itemCount: selectedMeal.ingredients.length,
              ),
            ),
            buildSectionTitle(context, 'Steps'),
            buildContainer(
              ListView.builder(
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      ListTile(
                        leading: CircleAvatar(
                          child: Text(' # ${(index + 1)}'),
                        ),
                        title: Text(selectedMeal.steps[index]),
                      ),
                      const Divider(
                        thickness: 2.0,
                        color: Colors.amberAccent,
                      )
                    ],
                  );
                },
                itemCount: selectedMeal.steps.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
