import 'package:flutter/material.dart';
import 'package:meals_fame/categories_screen.dart';

void main() {
  runApp(const Main());
}

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meals Fame',
      theme: ThemeData(primarySwatch: Colors.amber),
      home: const CategoriesScreen(),
      debugShowCheckedModeBanner: false,
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
