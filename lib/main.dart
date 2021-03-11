import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main(List<String> args) => runApp(new PerguntaApp());

class PerguntaAppState extends State<PerguntaApp> {
  //classe para gerenciar estado
  var questionSelected = 0;

  void answer() {
    setState(() {
      questionSelected++;
    });

    print(questionSelected);
  }

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
              Text(questions[questionSelected]),
              ElevatedButton(onPressed: answer, child: Text('Response 1')),
              ElevatedButton(onPressed: answer, child: Text('Response 2')),
              ElevatedButton(onPressed: answer, child: Text('Response 3'))
            ],
          )),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  PerguntaAppState createState() {
    return PerguntaAppState();
  }
}
