import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:projeto_perguntas/components/resposta.dart';
import 'package:projeto_perguntas/model/pergunta_resposta.dart';

class Questao extends StatelessWidget {
  final PerguntaResposta lista;
  final void Function() proximaPergunta;

  const Questao(this.lista, this.proximaPergunta, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          lista.pergunta,
          style: const TextStyle(),
        ),
        ...lista.respostas.map(
          (e) => Resposta(
            e,
            proximaPergunta,
            lista.responder,
          ),
        ),
        Text(lista.resposta ?? 'Nenhuma resposta')
      ],
    );
  }
}
