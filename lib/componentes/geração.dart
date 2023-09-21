import 'package:prova/models/generations.dart';
import 'package:flutter/material.dart';

class Generation {
  final String title;
  final List<String> pokemons;

  Generation({
    required this.title,
    required this.pokemons,
  });

    factory Generation.fromJson(Map<String, dynamic> json) {
    return Generation(
      title: json['title'] ?? '',
      pokemons: json['pokemons'] != null
          ? List<String>.from(json['pokemons'])
          : <String>[],
    );
  }
    Map<String, dynamic> toJson() {
    return {
      'title': title,
      'pokemons': pokemons,
    };
  }
}