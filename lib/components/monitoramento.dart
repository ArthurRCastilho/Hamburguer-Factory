import 'package:flutter/material.dart';
import 'package:hamburguer_factory/screens/new_hamburguer.dart';

class Monitoramento extends StatelessWidget {
  const Monitoramento({
    super.key,
    required this.widget,
  });

  final NewHamburguer widget;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.shade300,
      height: MediaQuery.of(context).size.height * 0.2,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Montagem do Hamburguer'),
              const SizedBox(width: 10),
              if (widget.hamburguer.isMontado() == true)
                const Icon(
                  Icons.done_outline_outlined,
                  color: Colors.green,
                ),
              if (widget.hamburguer.isMontado() == false)
                const Icon(Icons.close, color: Colors.red),
            ],
          ),
          if (widget.hamburguer.isMontado()) const SizedBox(height: 10),
          if (widget.hamburguer.isMontado())
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Inspeção'),
                const SizedBox(width: 10),
                if (widget.hamburguer.isInspecionado() == true)
                  const Icon(
                    Icons.done_outline_outlined,
                    color: Colors.green,
                  ),
                if (widget.hamburguer.isInspecionado() == false)
                  const Icon(Icons.close, color: Colors.red),
              ],
            ),
          if (widget.hamburguer.isMontado() &&
              widget.hamburguer.isInspecionado() == true)
            const SizedBox(height: 10),
          if (widget.hamburguer.isMontado() &&
              widget.hamburguer.isInspecionado() == true)
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Embalagem'),
                const SizedBox(width: 10),
                if (widget.hamburguer.isEmbalado() == true)
                  const Icon(
                    Icons.done_outline_outlined,
                    color: Colors.green,
                  ),
                if (widget.hamburguer.isEmbalado() == false)
                  const Icon(Icons.close, color: Colors.red),
              ],
            ),
        ],
      ),
    );
  }
}
