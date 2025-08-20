import 'package:rpg_demo_v1/entities/personagem.dart';
import 'package:test/test.dart';

void main() {
  group('Teste para personagem', () {
    test('Deve criar uma instância com os valores corretos', () {
      final personagem = Personagem(
        nome: 'João',
        vida: 10,
        escudo: 10,
        velocidade: 10,
      );

      expect(personagem, isA<Personagem>());
      expect(personagem.nome, 'João');
    });

    test('Deve reduzir a vida ao defender e receber dano.', () {
      final personagem = Personagem(
        nome: 'João',
        vida: 10,
        escudo: 10,
        velocidade: 10,
      );
      personagem.defender(15);
      expect(personagem.vida, 5);
    });

    test('A vida não pode ser menor que zero.', () {
      final personagem = Personagem(
        nome: 'João',
        vida: 10,
        escudo: 10,
        velocidade: 10,
      );
      personagem.defender(25);
      expect(personagem.vida, 0);
    });
  });
}
