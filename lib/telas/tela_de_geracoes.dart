import 'package:flutter/material.dart';

import 'package:marcos1/models/generations.dart';
import 'package:marcos1/screens/teladetalhegeracoes.dart'; 

class TelaDeGeracoes extends StatelessWidget {
  final List<Generation> generations;

  TelaDeGeracoes({
    required this.generations,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gerações de Pokémon'),
      ),
      body: ListView.builder(
        itemCount: generations.length,
        itemBuilder: (context, index) {
          final generation = generations[index];
          return ListTile(
            title: Text(generation.title),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => TelaDetalhesGeracao(geracao: generation),
              ));
            },
          );
        },
      ),
    );
  }
}
