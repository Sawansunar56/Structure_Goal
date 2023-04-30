import 'package:flutter/material.dart';
import 'package:structure_goal/constants/color.dart';
import 'package:structure_goal/routes/app_router.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final _router = AppRouter();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter game',
      theme: ThemeData(
        inputDecorationTheme: const InputDecorationTheme(
            labelStyle: TextStyle(decorationColor: Colors.purple)),
        scaffoldBackgroundColor: primaryBackground,
        primarySwatch: Colors.purple,
      ),
      routeInformationParser: _router.router.routeInformationParser,
      routerDelegate: _router.router.routerDelegate,
      debugShowCheckedModeBanner: false,
    );
  }
}
