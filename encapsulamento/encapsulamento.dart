import 'ContaBancaria.dart';
import 'Produto.dart';

/**
 * encapsulamento e o conceito de ocultas os detalhes internos de uma classe e
 * controlar o acesso aos seus atributos e metodos.
 * ele ajuda a manter o controle sobre os dados, evitando que sejam modificados
 * diretamente de fora da classe.
 * 
 * beneficios
 * protege os  dados internos da classe
 * garante que os dados sejam acessados/modificados de maneira segura e 
 * controlada
 * facilita a manutencao e evolucao do codigo
 * no dart usamos _ (undescode ou underline) no inicio do nome de variavel ou
 * metodos para torna-los privados ao arquivo onde estao sendo definidos.
 */

void main(List<String> args) {
  Contabancaria conta = Contabancaria('jardel');
  print(conta.getSaldo());
  if(conta.depositar(100)){
    print('deposito efetuado com sucesso');
    print('saldo atual: ${conta.getSaldo()}');
  }
  if(conta.sacar(50)){
    print('saque efetuado');
  }else{
    print('saldo insuficiente');
  }

  /**
   * GETTER E SETTER 
   * em POO getter e setter sao metodos usados para acessar (get) e modificar
   * (set) valores de atributos privados de uma classe.
   * no dart eles sao usados como atributos normais, mas por tras voce tem uma 
   * logica de controle para alterar valores privados.
   * por que usar?
   * para proteger dados sensiveis de uma classe
   * para validar valores antes de alterar
   * para aplicar regras de negocios para acessar ou definir valores
   * 
   */

  Produto p = Produto();
  p.nome = "Caneta"; //chamando setter
  p.preco = 2.5; //chamando setter
  //p.nome e p.preco sao getters
  print('produto: ${p.nome} Preço: ${p.preco}');
}