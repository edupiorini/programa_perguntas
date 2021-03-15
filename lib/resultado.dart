import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final String _mensagem;

  const Resultado(this._mensagem);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        _mensagem,
        style: TextStyle(fontSize: 28),
      ),
    );
  }
}
