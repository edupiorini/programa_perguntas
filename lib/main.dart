import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main(List<String> args) => runApp(new PerguntaApp());

class PerguntaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Questions'),
          ),
          body: Text('Welcome Flutter 2!')),
    );
  }
}
