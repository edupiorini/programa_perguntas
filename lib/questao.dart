import 'package:flutter/material.dart';

class Questao extends StatelessWidget {
  final text;

  Questao(this.text);
  @override
  Widget build(BuildContext context) {
    return Text(text);
  }
}
