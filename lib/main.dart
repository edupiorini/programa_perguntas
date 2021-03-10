import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main(List<String> args) => runApp(new PerguntaApp());

class PerguntaApp extends StatelessWidget {
  void answer() {
    print('Question answered');
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
              Text(questions[0]),
              ElevatedButton(onPressed: answer, child: Text('Response 1')),
              ElevatedButton(onPressed: answer, child: Text('Response 2')),
              ElevatedButton(onPressed: answer, child: Text('Response 3'))
            ],
          )),
    );
  }
}
