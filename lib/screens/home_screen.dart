import 'package:flutter/material.dart';
import 'package:hamburguer_factory/models/hamburguer.dart';
import 'package:hamburguer_factory/utils/app_routes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ElevatedButton.icon(
          icon: const Icon(Icons.add),
          onPressed: () {
            final hamburguer = Hamburguer();
            Navigator.of(context).pushNamed(
              AppRoutes.NEW_HAMBURGUER,
              arguments: hamburguer,
            );
          },
          label: const Text('Criar novo Hamburguer'),
        ),
      ),
    );
  }
}
