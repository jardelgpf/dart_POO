/**
 * Composição
 * Crie uma classe Computador que contém Processador, Memoria e DiscoRigido. 
 * Os componentes devem ser criados dentro do construtor do Computador.
 * Mostre que os componentes não existem mais se o objeto Computador for destruído.
 */

class Processador {
  String modelo;
  double velocidade;

  Processador(this.modelo, this.velocidade);
}

class computador {
  Processador processador;
  String memoria;
  String discoRigido;

  computador(this.processador, this.memoria, this.discoRigido);

  void fichatecnica() {
    print('Ficha tecnica da maquina blaster:');
    print('Processador: ${processador.modelo} (${processador.velocidade} GHz)');
    print('Memória: $memoria');
    print('Disco Rígido: $discoRigido');
 
  }
}

void main(List<String> args) {
  Processador processador = Processador('AMD ryzen 5 5600x', 3.5);
  computador? pc = computador(processador, '32 GB', '520 GB SSD.M2');

  pc.fichatecnica();

  print('caiu agua no gabinete e o computador queimou...');
  pc = null;
  print('queimou a porra toda...');

  
}