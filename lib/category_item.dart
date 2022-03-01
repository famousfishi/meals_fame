import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final String title;
  final Color color;

  // ignore: prefer_const_constructors_in_immutables, use_key_in_widget_constructors
  CategoryItem({required this.title, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
