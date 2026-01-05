import 'package:flutter/material.dart';
import 'package:islami/features/home/ui/home_screen.dart';

import 'features/onboarding/ui/onboarding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        'onboarding' : (context)=> IntroScreen(),
        'home' : (context) =>  HomeScreen(),
      },
      initialRoute: 'onboarding',
    );
  }
}

