import 'package:flutter/material.dart';
import 'package:meals_fame/screens/categories_screen.dart';
import 'package:meals_fame/screens/favourites_screen.dart';

// ignore: use_key_in_widget_constructors
class TabsScreen extends StatefulWidget {
  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  final List<Map<String, Object>> myWidgets = [
    {'page': const CategoriesScreen(), 'title': 'Categories'},
    {'page': FavouritesScreen(), 'title': 'Your Favourites'}
  ];

  int _selectedTabIndex = 0;

  void selectedTab(int tabIndex) {
    setState(() {
      _selectedTabIndex = tabIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(myWidgets[_selectedTabIndex]['title'] as String),
      ),
      body: myWidgets[_selectedTabIndex]['page'] as Widget,
      bottomNavigationBar: BottomNavigationBar(
        onTap: selectedTab,
        currentIndex: _selectedTabIndex,
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.brown,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Theme.of(context).primaryColor,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.category), label: 'Categories'),
          BottomNavigationBarItem(icon: Icon(Icons.star), label: 'Favourites')
        ],
      ),
    );
  }
}
