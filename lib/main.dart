import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:programa_perguntas/resultado.dart';

import './questao.dart';
import 'resposta.dart';

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
    if (temPerguntaSelecionada) {
      setState(() {
        _perguntasSelecionadas++;
      });
    }
  }

  bool get temPerguntaSelecionada {
    final _condition = _perguntasSelecionadas < _perguntas.length;
    return _condition;
  }

  @override
  Widget build(BuildContext context) {
    List<String> respostas = temPerguntaSelecionada
        ? _perguntas[_perguntasSelecionadas]['answer']
        : null;

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Questions'),
          ),
          body: temPerguntaSelecionada
              ? Column(
                  children: [
                    Questao(_perguntas[_perguntasSelecionadas]['text']),
                    ...respostas
                        .map((text) => Resposta(text, _responder))
                        .toList(),
                  ],
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
