import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TituloWidget extends StatelessWidget {
final String titulo;
const TituloWidget({super.key, required this.titulo});

@override
  Widget build(BuildContext context) {
  
  return Text('titulo', style: TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: CupertinoColors.secondaryLabel
  ),);
  }
}