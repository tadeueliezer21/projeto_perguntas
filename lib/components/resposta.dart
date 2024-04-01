import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String resposta;
  final Function(String resposta) onSelecionado;
  final void Function() proximaPergunta;

  const Resposta(
    this.resposta,
    this.proximaPergunta,
    this.onSelecionado, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ElevatedButton(
        onPressed: () => {onSelecionado(resposta), proximaPergunta()},
        child: Text(resposta),
      ),
    );
  }
}
