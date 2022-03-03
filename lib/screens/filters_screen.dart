import 'package:flutter/material.dart';
import 'package:meals_fame/widgets/main_drawer.dart';

// ignore: use_key_in_widget_constructors
class FiltersScreen extends StatelessWidget {
  static const routeName = '/filters-screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your filters'),
      ),
      drawer:
          MainDrawer(), // you must put this in every widget that you would want it
      body: const Center(
        child: Text('Filters'),
      ),
    );
  }
}
