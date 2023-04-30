import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:structure_goal/constants/route_const.dart';
import 'package:structure_goal/screens/add_task.dart';
import 'package:structure_goal/screens/home_page.dart';

class AppRouter {
  GoRouter router = GoRouter(
    routes: [
      GoRoute(
        name: RouteConstants.homeRouteName,
        path: '/',
        pageBuilder: (context, state) {
          return const MaterialPage(child: MyHomePage());
        },
      ),
      GoRoute(
        name: RouteConstants.addRouteName,
        path: '/addpage',
        pageBuilder: (context, state) {
          return const MaterialPage(child: AddTask());
        },
      ),
    ],
  );
}
