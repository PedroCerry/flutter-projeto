import 'package:flutter/widgets.dart';

class Questao extends StatelessWidget {
  final String Texto;

  Questao(this.Texto);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.all(10),
        child: Text(
          Texto,
          style: TextStyle(fontSize: 28),
          textAlign: TextAlign.center,
        ));
  }
}
