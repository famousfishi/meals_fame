import 'package:flutter/material.dart';
import 'package:meals_fame/screens/filters_screen.dart';

// ignore: use_key_in_widget_constructors
class MainDrawer extends StatelessWidget {
  Widget buildListTile(String text, IconData icon, Function() tapHandler) {
    return ListTile(
      leading: Icon(
        icon,
        size: 26,
      ),
      title: Text(
        text,
        style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
      onTap: tapHandler,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 120,
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            color: Theme.of(context).primaryColor,
            // decoration: BoxDecoration(
            //     color: Colors.amberAccent,
            //     border: Border.all(color: Colors.black)),
            alignment: Alignment.centerLeft,
            child: const Text(
              'Cooking up!',
              style: TextStyle(
                  fontWeight: FontWeight.w900, fontSize: 30, color: Colors.red),
            ),
          ),
          const SizedBox(height: 10),
          buildListTile('Meals', Icons.restaurant, () {
            Navigator.of(context).pushReplacementNamed('/');
          }),
          buildListTile('Settings', Icons.settings, () {
            Navigator.of(context).pushReplacementNamed(FiltersScreen.routeName);
          }),
        ],
      ),
    );
  }
}
