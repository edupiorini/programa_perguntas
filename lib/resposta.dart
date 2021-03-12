import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String _text;

  Resposta(this._text);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(5),
        child: ElevatedButton(
          child: Text(_text, style: TextStyle(fontSize: 15)),
          onPressed: null,
        )
    );
  }
}
