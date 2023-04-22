import 'package:flutter/material.dart';
import 'package:structure_goal/constants/color.dart';
import 'screens/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter game',
      theme: ThemeData(
        scaffoldBackgroundColor: primaryBackground,
        primarySwatch: Colors.purple,
      ),
      home: const MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
