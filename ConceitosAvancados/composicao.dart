/**
 * COMPOSICAO
 * tipo de agrecadao mais forte
 * as partes nao existem sem o todo
 * indica uma dependencia de ciclo de vida
 * exemplo: casa composta comodo, se a casa e destruida os comodos tambem sao
 * os comodos nascem e morrem com a casa
 * ISSO E COMPOSICAO
 * exemplo 2
 * um pedido contem uma lista de produtos. em vez de heranca usamos composicao porque um pedido 
 * tem produtos mas nao e um produto
 */

//APLICANDO EXEMPLO 1
class Comodo{
  String nome;
  Comodo(this.nome);
}

class Casa{
  List<Comodo> comodos = [];

  Casa(){
    comodos = [
      Comodo('Sala'),
      Comodo('cozinha'),
    ];
  }
}

//APLICANDO EXEMPLO 2
class Produto{
  final String nome;
  final double preco;

  Produto(this.nome, this.preco);
}

class Pedido{
  final List<Produto> itens = [];

  void adicionarProduto(Produto produto){
    itens.add(produto);
  }

  double calcularTotal(){
   double total = 0.0;
    for (var produto in itens) {
      total += produto.preco;
    }

    return total;
  }

  void mostrarResumo(){
    print('Resumo do Pedido:');

    for (var produto in itens) {
      print('${produto.nome}: R\$ ${produto.preco}');
    }
    print('Total: R\$ ${calcularTotal()}');
  }
}

void main(List<String> args) {
  Produto p1 = Produto('Camisa', 145);
  Produto p2 = Produto('Bermuda', 50);

  Pedido pedido = Pedido();
  pedido.adicionarProduto(p1);
  pedido.adicionarProduto(p2);

  pedido.mostrarResumo();
  
}