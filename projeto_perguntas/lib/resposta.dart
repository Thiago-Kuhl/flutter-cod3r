import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String texto;
  final void Function() onSelection;
  Resposta(this.texto, this.onSelection);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text(texto),
        onPressed: onSelection,
      ),
    );
  }
}
