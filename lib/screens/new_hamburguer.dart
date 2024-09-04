import 'package:flutter/material.dart';
import 'package:hamburguer_factory/components/monitoramento.dart';
import 'package:hamburguer_factory/components/verificacao.dart';
import 'package:hamburguer_factory/models/hamburguer.dart';

class NewHamburguer extends StatefulWidget {
  final Hamburguer hamburguer;

  const NewHamburguer({super.key, required this.hamburguer});

  @override
  State<NewHamburguer> createState() => _NewHamburguerState();
}

class _NewHamburguerState extends State<NewHamburguer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(backgroundColor: Colors.white),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Monitoramento(widget: widget),
              const SizedBox(height: 10),
              ElevatedButton(
                child: const Text('Montar hamburguer'),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return Verificacao(
                        onPressedAprove: () {
                          setState(() {
                            widget.hamburguer.toggleMontado();
                            Navigator.of(context).pop();
                          });
                        },
                        onPressedWrong: () {
                          setState(() {
                            widget.hamburguer.recomecar();
                            Navigator.of(context).pop();
                          });
                        },
                      );
                    },
                  );
                },
              ),
              const SizedBox(height: 10),
              if (widget.hamburguer.montado == true)
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      child: const Text('Fazer Inspenção'),
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return Verificacao(
                              onPressedAprove: () {
                                setState(() {
                                  widget.hamburguer.toggleInpecionado();
                                  Navigator.of(context).pop();
                                });
                              },
                              onPressedWrong: () {
                                setState(() {
                                  widget.hamburguer.recomecar();
                                  Navigator.of(context).pop();
                                });
                              },
                            );
                          },
                        );
                      },
                    ),
                  ],
                ),
              const SizedBox(height: 10),
              if (widget.hamburguer.montado &&
                  widget.hamburguer.inspecionado == true)
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      child: const Text('Fazer Embalagem'),
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return Verificacao(
                              onPressedAprove: () {
                                setState(() {
                                  widget.hamburguer.toggleEmbalado();
                                  Navigator.of(context).pop();
                                });
                              },
                              onPressedWrong: () {
                                setState(() {
                                  widget.hamburguer.recomecar();
                                  Navigator.of(context).pop();
                                });
                              },
                            );
                          },
                        );
                      },
                    ),
                  ],
                ),
              const SizedBox(height: 10),
              if (widget.hamburguer.embalado == true &&
                  widget.hamburguer.inspecionado == true &&
                  widget.hamburguer.montado == true &&
                  widget.hamburguer.valide == true)
                TextButton(
                  onPressed: Navigator.of(context).pop,
                  child: const Text('Finalizar Hamburguer'),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
