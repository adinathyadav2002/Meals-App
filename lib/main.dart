import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meal_app/modules/meals/meals_screen.dart';
import 'package:meal_app/data/dummy_data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Color.fromARGB(255, 131, 57, 0),
          brightness: Brightness.dark,
        ),
        textTheme: GoogleFonts.latoTextTheme(),
      ),

      home: MealsScreen(
        title: 'Spaghetti with Tomato Sauce',
        meals: dummyMeals,
      ),
      // home: CategoryScreen(),
    );
  }
}
