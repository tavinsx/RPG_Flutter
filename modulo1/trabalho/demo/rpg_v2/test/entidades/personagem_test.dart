import 'package:rpg_v2/entidades/personagem.dart';
import 'package:test/test.dart';

int somar(int numero1, int numero2) {
  return numero1 + numero2;
}

void main() {
  group('Testes para a classe Personagem', () {
    test('Deve criar um objeto de Personagem', () {
      final personagem = Personagem('João', 10, 10, 10);
      expect(personagem, isA<Personagem>());
    });

    test('Deve inicializar com os valores corretos.', () {
      final personagem = Personagem('Maria', 15, 12, 33);
      expect(personagem.nome, 'Maria');
      expect(personagem.vida, 15);
      expect(personagem.escudo, 12);
      expect(personagem.velocidade, 33);
    });

    test('Deve reduzir a vida ao defender e receber dano.', () {
      final personagem = Personagem('João', 10, 10, 10);
      expect(personagem.vida, 10);
      personagem.defender(5);
      expect(personagem.vida, 5);
    });
  });
}
