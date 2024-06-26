import 'package:flutter/material.dart';
import './questionario.dart';
import './resultado.dart';

main() => runApp(PerguntaApp());

class PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;
  var _pontuacaoTotal = 0;

  final _perguntas = const [
    {
      'texto': 'Cor Favorita?',
      'respostas': [
        {'texto': 'Preto', 'ponto': 10},
        {'texto': 'Vermelho', 'ponto': 5},
        {'texto': 'Verde', 'ponto': 3},
        {'texto': 'Branco', 'ponto': 1},
      ],
    },
    {
      'texto': 'Animal Favorito?',
      'respostas': [
        {'texto': 'Coelho', 'ponto': 10},
        {'texto': 'Cobra', 'ponto': 5},
        {'texto': 'Elefante', 'ponto': 3},
        {'texto': 'Leão', 'ponto': 1},
      ],
    },
    {
      'texto': 'Qual é o seu Instrutor favorito?',
      'respostas': [
        {'texto': 'Maria', 'ponto': 10},
        {'texto': 'João', 'ponto': 5},
        {'texto': 'Leo', 'ponto': 3},
        {'texto': 'Pedro', 'ponto': 1},
      ],
    }
  ];

  void _responder(int pontuacao) {
    if (temPergutasSelecionadas) {
      setState(() {
        _perguntaSelecionada++;
        _pontuacaoTotal += pontuacao;
      });
    }
  }

  void _reiniciarForm() {
    setState(() {
      _perguntaSelecionada = 0;
      _pontuacaoTotal = 0;
    });
  }

  bool get temPergutasSelecionadas {
    return _perguntaSelecionada < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    // for (String textoResp in respostas) {
    //   widgets.add(Resposta(textoResp, _responder));
    // }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: temPergutasSelecionadas
            ? Questionario(
                perguntas: _perguntas,
                perguntaSelecionada: _perguntaSelecionada,
                onResponder: _responder,
              )
            : Resultado(_pontuacaoTotal, _reiniciarForm),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  @override
  PerguntaAppState createState() {
    return PerguntaAppState();
  }
}
