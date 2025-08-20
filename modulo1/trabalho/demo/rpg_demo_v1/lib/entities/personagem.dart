class Personagem {
  final String _nome;
  int _vida;
  final int _escudo;
  final int _velocidade;

  Personagem({
    required String nome,
    required int vida,
    required int escudo,
    required int velocidade,
  }) : _nome = nome,
       _vida = vida,
       _escudo = escudo,
       _velocidade = velocidade;

  String get nome => _nome;
  int get vida => _vida;
  int get escudo => _escudo;
  int get velocidade => _velocidade;

  void atacar(Personagem oponente, int dano) {
    oponente.defender(dano);
  }

  void defender(int dano) {
    final danoEfetivo = dano - _escudo;
    final danoFinal = danoEfetivo > 0 ? danoEfetivo : 0;
    _vida -= danoFinal;
    if (_vida < 0) {
      _vida = 0;
    }
  }
}
