import 'Produto.dart';
import 'Carrinho.dart';

void main(List<String> args) {
  
  Carrinho carrinho = new Carrinho();

  //adicionando itens no carrinho
  carrinho.adicionarProduto(Produto("Arroz", 12.89));
  carrinho.adicionarProduto(Produto("Feijão", 8.99));
  carrinho.adicionarProduto(Produto("Leite", 4.99));

  carrinho.mostrarCarrinho();
  print("Valor total ${carrinho.calculaTotal()}");
  
}