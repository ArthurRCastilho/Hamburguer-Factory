import 'package:flutter/material.dart';

class Verificacao extends StatelessWidget {
  final Function() onPressedAprove;
  final Function() onPressedWrong;
  const Verificacao(
      {super.key, required this.onPressedAprove, required this.onPressedWrong});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Validação'),
      content: const Text('Ouve algum erro?'),
      actions: [
        TextButton(
          onPressed: onPressedWrong,
          child: const Text('Erro detectado'),
        ),
        TextButton(
          onPressed: onPressedAprove,
          child: const Text('Aprovar'),
        ),
      ],
    );
  }
}
