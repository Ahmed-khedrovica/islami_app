import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:islami/core/routing/app_routes.dart';
import 'package:islami/features/home/ui/home_screen.dart';
import 'package:islami/features/onboarding/ui/onboarding.dart';
import 'package:islami/features/sebha/ui/sebha_screen.dart';

import '../app/widgets/app_bottom_navigation.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: AppRoutes.onboarding,
  routes: [
    GoRoute(
      path: AppRoutes.onboarding,
      builder: (context, state) => const IntroScreen(),
    ),

    /// Main App with persistent BottomNavigationBar
    ShellRoute(
      builder: (context, state, child) {
        return Scaffold(
          body: child,
          bottomNavigationBar: const AppBottomNavigation(),
        );
      },
      routes: [
        GoRoute(
          path: AppRoutes.quran,
          builder: (context, state) => const HomeScreen(),
        ),
        GoRoute(
          path: AppRoutes.hadith,
          builder: (context, state) => Placeholder(),
        ),
        GoRoute(
          path: AppRoutes.sebha,
          builder: (context, state) => SebhaScreen(),
        ),
        GoRoute(
          path: AppRoutes.radio,
          builder: (context, state) => Placeholder(),
        ),
        GoRoute(
          path: AppRoutes.time,
          builder: (context, state) => Placeholder(),
        ),
      ],
    ),
  ],
);
