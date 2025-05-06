/**
 * LSP - LISKOV SUBSTITUTION PRINCIPLE
 * EXEMPLO VIOLANDO SLP
 * um pinguim nao deve ser forcado a voar. isso quebra o SLP.
 */

/* class Ave {
  void voar() {
    print('A ave está voando!');
  }
}

class Pinguim extends Ave {
  @override
  void voar() {
   throw Exception('Pinguins não podem voar!');
  }
} */

/**
 * SOLUCAO
 * agora o pinguim nao precisa implementar voo.
 */
class Ave {
  void andar() {
    print('A ave está voando!');
  }
}
abstract class AveQueVoa extends Ave {
  @override
  void voar(); // metodo abstrato
}
class Andorinha extends AveQueVoa {
  @override
  void voar() {
    print('A andorinha está voando!');
  }
}
class Pinguim extends Ave {
  @override
  void andar() {
    print('O pinguim está andando!');
  }
}