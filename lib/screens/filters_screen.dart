import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class FiltersScreen extends StatelessWidget {
  static const routeName = '/filters-screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your filters'),
      ),
      body: const Center(
        child: Text('Filters'),
      ),
    );
  }
}
