import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'main_screen.dart';
import 'result_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dinner Hero',
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/main': (context) => MainScreen(),
        '/results': (context) => ResultScreen(),
      },
    );
  }
}
