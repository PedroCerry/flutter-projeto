import 'package:flutter/widgets.dart';
import './questao.dart';
import './resposta.dart';

class Questionario extends StatelessWidget {
  final List<Map<String, Object>> perguntas;
  final int perguntaSelecionada;
  final void Function(int) onResponder;

  Questionario({
    required this.perguntas,
    required this.perguntaSelecionada,
    required this.onResponder,

    // required obriga parametros
  });

  bool get temPergutasSelecionadas {
    return perguntaSelecionada < perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, Object>> respostas = temPergutasSelecionadas
        ? perguntas[perguntaSelecionada]['respostas']
            as List<Map<String, Object>>
        : [];

    return Column(
      children: <Widget>[
        Questao(perguntas.elementAt(perguntaSelecionada)['texto'].toString()),
        ...respostas.map((resp) {
          return Resposta(resp['texto'] as String,
              () => onResponder(int.parse(resp['ponto'].toString())));
        }).toList(),
      ],
    );
  }
}
