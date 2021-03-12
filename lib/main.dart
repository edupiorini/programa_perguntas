import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import './questao.dart';
import 'resposta.dart';

main(List<String> args) => runApp(new PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  //classe para gerenciar estado
  var _questionSelected = 0;

  _answer() {
    setState(() {
      _questionSelected++;
    });

    print(_questionSelected);
  }

  @override
  Widget build(BuildContext context) {
    final List<Map<String, Object>> questions = [
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
    List<Widget> responses = [];

    for(String textResponse in questions[_questionSelected]['answer']) {
      responses.add(Resposta(textResponse, _answer));
    }

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Questions'),
          ),
          body: Column(
            children: [
              Questao(questions[_questionSelected]['text']),
              ...responses,
            ],
          )),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
