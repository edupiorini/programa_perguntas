import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Respostas extends StatelessWidget {
  final _text;

  Respostas(this._text);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(5),
        child: Text(_text, style: TextStyle(fontSize: 15)));
  }
}
