import 'package:flutter/material.dart';

class Questao extends StatelessWidget {
  final String texto;

  const Questao({super.key, required this.texto});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(10),
      child: Text(
        texto,
        textAlign: TextAlign.center,
        style: const TextStyle(fontSize: 25),
      ),
    );
  }
}
