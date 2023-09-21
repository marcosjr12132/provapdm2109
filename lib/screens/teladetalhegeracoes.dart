import 'package:flutter/material.dart';

import 'package:prova/componentes/geração.dart'; 

class TelaDetalhesGeracao extends StatelessWidget {
  final Generation geracao;

  TelaDetalhesGeracao({
    required this.geracao,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detalhes da ${geracao.title}'),
      ),
      body: ListView.builder(
        itemCount: geracao.pokemons.length,
        itemBuilder: (context, index) {
          final imageUrl = geracao.pokemons[index];
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(imageUrl),
          );
        },
      ),
    );
  }
}
