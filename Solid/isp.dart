/**
 * ISP - INTERFACE SEGREGATION PRINCIPLE
 * EXEMPLO VIOLANDO ISP
 * o rovo é forcado a implementar o metodo comer, porem eles nao comem
 * 
 */

/* abstract class Funcionario {
  void trabalhar();
  void comer();
}

class Robo implements Funcionario {
  @override
  void trabalhar() {
    print('O robô está trabalhando!');
  }

  @override
  void comer() {
    throw Exception('Robôs não comem!');
  }
} */

/**
 * SOLUCAO
 * interfaces menores: cada classe implementa apenas o que precisa
 */

abstract class Trabalhador{
  void trabalhar();
}

abstract class Alimentador{
  void comer();
}

class Robo implements Trabalhador {
  @override
  void trabalhar() {
    print('O robô está trabalhando!');
  }
}

class Humano implements Trabalhador, Alimentador {
  @override
  void trabalhar() {
    print('O humano está trabalhando!');
  }

  @override
  void comer() {
    print('O humano está comendo!');
  }
}