import 'Produto.dart';

class Carrinho {
  List<Produto> produtos = [];

  void adicionarProduto(Produto p){
    produtos.add(p);
    print("Produto Adicionado: ${p.nome}");
  }

  void mostrarCarrinho(){
    for(var produto in produtos){
      print("Produto: ${produto.nome} - R\$ ${produto.preco}");
    }

  }

  double calculaTotal(){
    double total = 0.0;
    for(var produto in produtos){
      total += produto.preco;
    }
    return total;
  }
}