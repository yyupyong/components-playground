import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:grid_sample/screens/detailsScreen.dart';
import 'package:grid_sample/screens/homeScreen.dart';

final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const HomeScreen();
      },
    ),
    GoRoute(
      path: "/details",
      pageBuilder: (context, state) {
        return const MaterialPage(
            fullscreenDialog: true, child: DetailsScreen());
      },
    )
  ],
);
