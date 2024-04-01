import 'package:flutter/material.dart';
import 'package:projeto_perguntas/components/questao.dart';
import 'package:projeto_perguntas/model/pergunta_resposta.dart';

void main() {
  runApp(const PerguntaApp());
}

class PerguntaApp extends StatefulWidget {
  const PerguntaApp({super.key});

  @override
  State<PerguntaApp> createState() => _PerguntaAppState();
}

class _PerguntaAppState extends State<PerguntaApp> {
  final List<PerguntaResposta> perguntas = [
    PerguntaResposta('Cor favorita?', ['Preto', 'Cinza']),
    PerguntaResposta('Carro favorito?', ['Monza', 'Fusca']),
    PerguntaResposta('Cidade favorita?', ['Caconde', 'Sao Jose'])
  ];

  int _perguntaSelecionada = 0;

  void _proximaPergunta() {
    if (perguntas.length == _perguntaSelecionada + 1) {
      return;
    }

    setState(() {
      _perguntaSelecionada++;
    });
  }

  void _perguntaAnterior() {
    if (_perguntaSelecionada == 0) {
      return;
    }

    setState(() {
      _perguntaSelecionada--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        bottomNavigationBar: BottomAppBar(
          color: Colors.blue,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                onPressed: () => {_proximaPergunta()},
                child: const Text(
                  'Proxima pergunta',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              TextButton(
                onPressed: () => {_perguntaAnterior()},
                child: const Text(
                  'Pergunta anterior',
                  style: TextStyle(color: Colors.white),
                ),
              )
            ],
          ),
        ),
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          title: const Text(
            'Perguntas ',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: Center(
          child: SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Questao(
              perguntas[_perguntaSelecionada],
              _proximaPergunta,
            ),
          ),
        ),
      ),
    );
  }
}
