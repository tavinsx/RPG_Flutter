import 'package:project_flutter/domain/entities/personagem.dart';
class Monstro extends Personagem {
  final String _origem;
  final String _tipoCriatura;

  Monstro({
    required String origem,
    required String tipoCriatura,
    required super.nome,
    required super.vida,
    required super.escudo,
    required super.velocidade,
    required super.raca, required String missaoMonstro, required String, required String reinoMonstro,
  })  : _origem = origem,
        _tipoCriatura = tipoCriatura;
  }

  // ignore: recursive_getters
  String get _origem => _origem;
  String get _tipoCriatura => _tipoCriatura;

