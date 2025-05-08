/**
 * Agregação
 * Crie uma classe Time e outra Jogador. Um time possui jogadores, mas um jogador pode existir sem estar em um time.
 * Adicione jogadores ao time e mostre que o jogador existe fora do time.
 */

class Jogador {
  final String nome;
  Jogador(this.nome);

  void exibir() => print('Jogador: $nome');
}

class Time {
  final String nome;
  final List<Jogador> jogadores = [];

  Time(this.nome);

  void adicionarJogador(Jogador jogador) {
    jogadores.add(jogador);
  }

  void listarJogadores() {
    print('Time: $nome');
    for (var jogador in jogadores) {
      print('${jogador.nome}');
    }
  }
}

void main(List<String> args) {
  Jogador j1 = Jogador('Neymar');
  Jogador j2 = Jogador('Messi');
  Jogador j3 = Jogador('Cristiano Ronaldo');

  Time time = Time('Seleção Brasileira');
  time.adicionarJogador(j1);
  time.adicionarJogador(j2);

  time.listarJogadores();

  print('\nJogadores fora do time:');
  j3.exibir();
}