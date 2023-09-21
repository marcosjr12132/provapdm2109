import 'package:flutter/material.dart';
import 'package:prova/telas/tela_de_geracoes.dart'; 
import 'package:prova/models/generations.dart'; 

void main() {
  runApp(MeuApp());
}

class MeuApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pokedex',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TelaDeGeracoes(
        generations: generations, 
      ),
    );
  }
}
