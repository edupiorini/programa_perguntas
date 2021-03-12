import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String _text;
  final void Function() onSelection;

  Resposta(this._text, this.onSelection);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.all(5),
        child: ElevatedButton(
          child:
              Text(_text, style: TextStyle(color: Colors.white, fontSize: 15)),
          onPressed: onSelection,
        ));
  }
}
