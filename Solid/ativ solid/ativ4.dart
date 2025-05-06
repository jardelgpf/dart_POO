/* ISP - Divida a interface em interfaces menores para que cada classe implante apenas o que usa.

abstract class Funcionario {
  void trabalhar();
  void comer();
}

class Robo implements Funcionario {
  @override
  void trabalhar() => print('Robô trabalhando');

  @override
  void comer() => throw Exception('Robô não come');
}
 */

abstract class Trabalhador {
  void trabalhar();
}

abstract class Alimentador {
  void comer();
}

class Robo implements Trabalhador {
  @override
  void trabalhar() => print('Robô trabalhando');
}

class Humano implements Trabalhador, Alimentador {
  @override
  void trabalhar() => print('Humano trabalhando');

  @override
  void comer() => print('Humano comendo');
}

void main() {
  Trabalhador robo = Robo();
  Trabalhador humano = Humano();
  Alimentador humanoAlimentador = Humano();

  robo.trabalhar();
  humano.trabalhar();
  humanoAlimentador.comer();
}