import 'package:flutter/material.dart';
import 'package:projeto_perguntas/questionario.dart';
import 'package:projeto_perguntas/resultado.dart';

main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;
  var _pontuacaoTotal = 0;
  final _perguntas = const [
    {
      'texto': 'Quanto é 10 + 10 ?',
      'respostas': [
        {'texto': '10', 'pontuacao': 0},
        {'texto': '15', 'pontuacao': 0},
        {'texto': '20', 'pontuacao': 10},
        {'texto': '11', 'pontuacao': 0},
      ]
    },
    {
      'texto': 'Quanto é 10 * 10 ?',
      'respostas': [
        {'texto': '20', 'pontuacao': 0},
        {'texto': '100', 'pontuacao': 10},
        {'texto': '10000', 'pontuacao': 0},
        {'texto': '1000', 'pontuacao': 0},
      ]
    },
    {
      'texto': 'Quanto é 100 / 100 ?',
      'respostas': [
        {'texto': '100', 'pontuacao': 0},
        {'texto': '50', 'pontuacao': 0},
        {'texto': '1', 'pontuacao': 10},
        {'texto': '10', 'pontuacao': 0},
      ]
    }
  ];

  void _responder(int pontuacao) {
    if (hasSelectedQuestion) {
      setState(() {
        _perguntaSelecionada++;
        _pontuacaoTotal += pontuacao;
      });
    }

    print(_pontuacaoTotal);
  }

  void _reiniciarQuestionario() {
    setState(() {
      _perguntaSelecionada = 0;
      _pontuacaoTotal = 0;
    });
  }

  bool get hasSelectedQuestion {
    return _perguntaSelecionada < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    // for (var textoResp in respostas) {
    //   widgets.add(Resposta(textoResp, _responder));
    // }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: hasSelectedQuestion
            ? Questionario(
                perguntas: _perguntas,
                perguntaSelecionada: _perguntaSelecionada,
                onResponse: _responder)
            : Resultado(_pontuacaoTotal, _reiniciarQuestionario),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
