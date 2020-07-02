import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int pontuacao;
  final void Function() reiniciarQuestionario;
  Resultado(this.pontuacao, this.reiniciarQuestionario);

  String get fraseResultado {
    if (pontuacao == 0) {
      return 'Volte para o primário, anta!';
    } else if (pontuacao == 10) {
      return 'É, precisa estudar mais um pouco...';
    } else if (pontuacao == 20) {
      return 'Ainda pode melhorar né querida(o)!';
    } else if (pontuacao == 30) {
      return 'Uffaaa, é o minímo né querida(o)!';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Center(
          child: Text(
            fraseResultado,
            style: TextStyle(fontSize: 28),
          ),
        ),
        FlatButton(
          child: Text(
            'Reiniar?',
            style: TextStyle(fontSize: 18),
          ),
          textColor: Colors.blue,
          onPressed: reiniciarQuestionario,
        )
      ],
    );
  }
}
