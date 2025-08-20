class Personagem {
  String nome;
  int vida;
  int escudo;
  int velocidade;

  Personagem(this.nome, this.vida, this.escudo, this.velocidade);

  void defender(int dano) {
    vida -= dano;
  }
}
