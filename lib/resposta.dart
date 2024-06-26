import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String Texto;
  final void Function() onSelecao;

  Resposta(this.Texto, this.onSelecao);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
          //textcolor: Colors.white,
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
          ), //onPrimary: Colors.white),
          child: Text(Texto),
          onPressed: onSelecao),
    );
  }
}
