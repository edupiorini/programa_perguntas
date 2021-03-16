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
      'text': 'Which is your favorite color?',
      'answer': ['Red', 'Green', 'Blue', 'Gray']
    },
    {
      'text': 'Which is your favorite animal?',
      'answer': ['Dog', 'Cat', 'Bird', 'Fish']
    },
    {
      'text': 'Which is your favorite teacher?',
      'answer': ['Eduardo', 'Laura', 'Paulo', 'Andreia']
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
