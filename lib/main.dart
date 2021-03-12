import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import './questao.dart';
import 'resposta.dart';

main(List<String> args) => runApp(new PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  //classe para gerenciar estado
  var _questionSelected = 0;

  /**
   * void _answer() {

      setState(() {
      _questionSelected++;
      });

      print(_questionSelected);
      }
   */


  @override
  Widget build(BuildContext context) {
    final List<String> questions = [
      'Which is your favorite color?',
      'Which is your favorite animal?',
    ];
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Questions'),
          ),
          body: Column(
            children: [
              Questao(questions[_questionSelected]),
              ElevatedButton(onPressed: null, child: Resposta('Response 1')),
              ElevatedButton(onPressed: null, child: Resposta('Response 2')),
              ElevatedButton(onPressed: null, child: Resposta('Response 3'))
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
