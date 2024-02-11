import 'screens/results_page.dart';
import 'package:flutter/material.dart';
import 'screens/input_widget.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
          primaryColor: Color(0xFF0A0D22),
          scaffoldBackgroundColor: Color(0xFF0A0D22),
          appBarTheme: AppBarTheme(color: Color(0xFF0A0D22))),
      initialRoute: 'Home',
      routes: {
        'Home': (context) => InputPage(),
        //'Results': (context) => ResultsPage(),
      },
    );
  }
}


/*colorScheme: ColorScheme(
            brightness: Brightness.light,
            primary: Color(0xFF0A0D22),
            onPrimary: Colors.white,
            secondary: Colors.blue,
            onSecondary: Colors.white,
            error: Colors.blue,
            onError: Colors.blue,
            background: Colors.blue,
            onBackground: Colors.white,
            surface: Colors.black,
            onSurface: Colors.black),
        scaffoldBackgroundColor: Color(0xFF0A0D22),
        textTheme: TextTheme(
          bodyMedium: TextStyle(color: Colors.white),
        ), */