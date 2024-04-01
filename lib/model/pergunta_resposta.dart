class PerguntaResposta {
  final String pergunta;
  final List<String> respostas;
  String? _resposta;

  PerguntaResposta(this.pergunta, this.respostas);

  void responder(String resposta) {
    _resposta = resposta;
  }

  String? get resposta {
    return _resposta;
  }
}
