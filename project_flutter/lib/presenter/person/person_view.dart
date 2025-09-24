import 'package:flutter/material.dart';
import 'package:project_flutter/domain/entities/elfo.dart';
import 'package:project_flutter/domain/entities/heroi.dart';
import 'package:project_flutter/domain/entities/humano.dart';
import 'package:project_flutter/domain/entities/monstro.dart';
import 'package:project_flutter/domain/entities/personagem.dart';


class PersonView extends StatelessWidget {
  PersonView({super.key});

  final List<Personagem> _personagens = [
    Heroi(
      nome: 'João',
      vida: 10,
      escudo: 10,
      velocidade: 10,
      reino: '',
      missao: 'demolir o castelo', 
      raca: Humano(bonusVida: 5, bonusEscudo: 5, bonusAtaque: 10),
    ),
      Monstro(origem: 'cachumba', tipoCriatura: 'cachorro', nome: 'weslwi', vida: 5, escudo: 5, velocidade: 5, raca: Elfo(bonusVida: 5, bonusEscudo: 5, bonusAtaque: 5), missaoMonstro: 'caga na pika', String: String, reinoMonstro: 'castelo da cachumba')
  
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _personagens.length,
      itemBuilder: (context, index) {
        final personagem = _personagens[index];
        return ListTile(
          title: Text(personagem.nome),
          subtitle: ListTile(subtitle: Text('Vida: ${personagem.vida}, Escudo: ${personagem.escudo}, Velocidade: ${personagem.velocidade}')),
        
        );
      },
    );
  }
}