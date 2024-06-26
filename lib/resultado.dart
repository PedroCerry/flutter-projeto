import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
//import 'package:projeto_perguntas/main.dart';

class Resultado extends StatelessWidget {
  final int pontuacao;
  final void Function() onReiniciarForm;

  Resultado(this.pontuacao, this.onReiniciarForm);

  String get fraseResult {
    if (pontuacao < 8) {
      return 'Parabéns!';
    } else if (pontuacao < 12) {
      return 'Você é bom!';
    } else if (pontuacao < 16) {
      return 'Impressionante!';
    } else {
      return 'Nível Jedi!';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            fraseResult,
            style: TextStyle(fontSize: 28),
          ),
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
          ), //onPrimary: Colors.white),
          onPressed: onReiniciarForm,
          child: Text(
            'Reiniciar',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18),
          ),
        )
      ],
    );
  }
}
