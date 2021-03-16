import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:programa_perguntas/questionario.dart';
import 'package:programa_perguntas/resultado.dart';

main(List<String> args) => runApp(new PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  //classe para gerenciar estado
  var _perguntasSelecionadas = 0;
  final List<Map<String, Object>> _perguntas = const [
    {
      'texto': 'Which is your favorite color?',
      'answer': [
        {'texto': 'Red', 'nota': 10},
        {'texto': 'Green', 'nota': 5},
        {'texto': 'Blue', 'nota': 3},
        {'texto': 'Gray', 'nota': 1},
      ]
    },
    {
      'texto': 'Which is your favorite animal?',
      'answer': [
        {'texto': 'Dog', 'nota': 5},
        {'texto': 'Cat', 'nota': 3},
        {'texto': 'Bird', 'nota': 1},
        {'texto': 'Fish', 'nota': 8},
      ]
    },
    {
      'texto': 'Which is your favorite teacher?',
      'answer': [
        {'texto': 'Eduardo', 'nota': 10},
        {'texto': 'Laura', 'nota': 8},
        {'texto': 'Paulo', 'nota': 6},
        {'texto': 'Andreia', 'nota': 7},
      ]
    }
  ];

  _responder() {
    setState(() {
      _perguntasSelecionadas++;
    });
  }

  bool get temPerguntaSelecionada {
    return _perguntasSelecionadas < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Questions'),
          ),
          body: temPerguntaSelecionada
              ? Questionario(
                  perguntas: _perguntas,
                  perguntaSelecionada: _perguntasSelecionadas,
                  responder: _responder,
                )
              : Resultado('Congratulations!')),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
