import 'package:flutter/material.dart';
import 'package:hamburguer_factory/models/hamburguer.dart';
import 'package:hamburguer_factory/screens/home_screen.dart';
import 'package:hamburguer_factory/screens/new_hamburguer.dart';
import 'package:hamburguer_factory/utils/app_routes.dart';

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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routes: {
        AppRoutes.HOME: (context) => const HomeScreen(),
        AppRoutes.NEW_HAMBURGUER: (context) {
          final hamburguer =
              ModalRoute.of(context)!.settings.arguments as Hamburguer;
          return NewHamburguer(hamburguer: hamburguer);
        },
      },
    );
  }
}
