import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import './questao.dart';
import 'resposta.dart';

main(List<String> args) => runApp(new PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  //classe para gerenciar estado
  var _questionSelected = 0;
  final List<Map<String, Object>> _questions = const [
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

  _answer() {
    if (isThereSelectedQuestion) {
      setState(() {
        _questionSelected++;
      });
    }
  }

  bool get isThereSelectedQuestion {
    final _condition = _questionSelected < _questions.length;
    return _condition;
  }

  @override
  Widget build(BuildContext context) {
    List<String> responses = isThereSelectedQuestion
        ? _questions[_questionSelected]['answer']
        : null;

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Questions'),
          ),
          body: isThereSelectedQuestion
              ? Column(
                  children: [
                    Questao(_questions[_questionSelected]['text']),
                    ...responses
                        .map((text) => Resposta(text, _answer))
                        .toList(),
                  ],
                )
              : Center(
                  child: Text('Congratulations!',
                      style: TextStyle(fontSize: 28)))),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
