/**
 * OCP - OPEN/CLOSED PRINCIPLE
 * VIOLANDO O OCP
 * toda vez que surgir um novo tipo de produto, precisamos alterar a classe.
 */

class CalculadoraImpostos{
  double calcular(String tipoProduto){
    if(tipoProduto == "Eletronico"){
      return 100 * 0.2; // 20% de imposto
    }else if(tipoProduto == "Alimento"){
      return 50 * 0.05; // 5% de imposto
    }else{
      return 0; // sem imposto
    }
  }
}

/**
 * SOLUCAO
 * basta criar novas classes de produtos. nao precisa alterar a calculadora.
 */

abstract class Produto{
  double calcularImposto();
}

class Eletronico implements Produto{
  @override
  double calcularImposto() {
    return 100 * 0.2; // 20% de imposto
  }
}

class Alimento implements Produto{
  @override
  double calcularImposto() => 50 * 0.05; // 5% de imposto
}

class CalculadorImpostos{
double calcular(Produto produto){
    return produto.calcularImposto();
  }
}

void main(List<String> args) {
  final calculadora = CalculadorImpostos();
  print('Imposto Eletronico: ${calculadora.calcular(Eletronico())}');
  print('Imposto Alimento: ${calculadora.calcular(Alimento())}');
}

