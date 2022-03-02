import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:meals_fame/screens/categories_meals_screen.dart';
import 'package:meals_fame/screens/meal_detail_screen.dart';

import 'screens/categories_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(const Main());
}

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meals Fame',
      theme: ThemeData(
          primarySwatch: Colors.amber,
          primaryColor: Colors.pinkAccent,
          textTheme: ThemeData.light().textTheme.copyWith(
              bodyText1: const TextStyle(color: Color.fromRGBO(20, 51, 51, 1)),
              bodyText2: const TextStyle(color: Color.fromRGBO(20, 51, 51, 1)),
              caption:
                  const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          canvasColor: const Color.fromRGBO(255, 254, 229, 1)),
      // home: const CategoriesScreen(),
      debugShowCheckedModeBanner: false,
      initialRoute: CategoriesScreen.routeName,
      routes: {
        CategoriesScreen.routeName: (context) => const CategoriesScreen(),
        CategoriesMealsScreen.routeName: (context) => CategoriesMealsScreen(),
        MealDetailScreen.routeName: (context) => MealDetailScreen()
      },
      onUnknownRoute: (settings) {
        return MaterialPageRoute(
            builder: (context) => const CategoriesScreen());
      },
    );
  }
}

// class Home extends StatefulWidget {
//   const Home({Key? key}) : super(key: key);

//   @override
//   _MainState createState() => _MainState();
// }

// class _MainState extends State<Home> {
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         appBar: AppBar(
//           title: const Text('Meals Fame'),
//         ),
//         body: const Center(
//           child: Text('Navigation Time'),
//         ),
//       ),
//     );
//   }
// }
