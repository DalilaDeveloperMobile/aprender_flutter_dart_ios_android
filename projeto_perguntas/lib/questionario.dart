import 'package:flutter/material.dart';
import 'package:projeto_perguntas/questao.dart';
import 'package:projeto_perguntas/resposta.dart';

class Questionario extends StatelessWidget {
  final List<Map<String, Object>> perguntas;
  final int perguntaSelecionada;
  final void Function(int) responder;

  const Questionario({
    super.key,
    required this.perguntas,
    required this.perguntaSelecionada,
    required this.responder,
  });

  bool get temPerguntaSelecionada {
    return perguntaSelecionada < perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, Object>> respostas =
        temPerguntaSelecionada ? perguntas[perguntaSelecionada].cast()['respostas'] : [];

    return Column(
      children: [
        Questao(texto: '${perguntas[perguntaSelecionada]['texto']}'),
        ...respostas.map((resp) {
          return Resposta(
            texto: resp.cast()['texto'].toString(),
            quandoSelecionado: () => responder(resp['pontuacao'] as int),
          );
        }).toList(),
      ],
    );
  }
}
