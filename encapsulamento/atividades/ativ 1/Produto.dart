class Produto {
  String nome;
  double _preco = 0; 

  Produto(this.nome);
   
  double get preco => _preco;


  set preco(double valor) {
    if (valor > 0) {
      _preco = valor;
    } else {
      print('preco deve ser maior que zero.');
    }
  }
}