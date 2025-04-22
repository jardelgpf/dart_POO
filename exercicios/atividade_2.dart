class Produto {

  double preco;
  String nome;
  int quantidade;

   Produto (this.preco, this.nome, this.quantidade);

     void exibirProduto() {
    print('Nome: $nome');
    print('Quantidade: $quantidade');
    print('Preço: R\$:$preco');
    } 
}
  void main() {

  Produto produto1 = Produto(150.00, 'fone de ouvido para surdos', 15);
  Produto produto2 = Produto(15.00, 'pao com bolinho', 45);

  produto1.exibirProduto();
  produto2.exibirProduto();
}

