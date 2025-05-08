/**
 * Acoplamento
 * Crie duas versões da classe Pagamento: uma que usa uma interface MetodoPagamento (baixo acoplamento) e 
 * outra que depende diretamente de CartaoCredito. Mostre como a primeira facilita a troca de métodos.
 */


abstract class MetodoPagamento {
  void pagar(double valor);
}

class CartaoCredito implements MetodoPagamento {

  void pagar(double valor) {
    print('Pagando R\$ $valor com cartão de crédito.');
  }
}

class Pagamentob {
  final MetodoPagamento metodoPagamento;

  Pagamentob(this.metodoPagamento);

  void realizarPagamento(double valor) {
    metodoPagamento.pagar(valor);
  }
}

class Pagamentoa {
  final CartaoCreditoa cartaoCreditoa;

  Pagamentoa(this.cartaoCreditoa);

  void realizarPagamento(double valor) {
    cartaoCreditoa.pagar(valor);
  }
}

class CartaoCreditoa {
  void pagar(double valor) {
    print('Pagando R\$ $valor com cartão de crédito.');
  }
}

void main(List<String> args) {

  print('meio com baixo acoplamento \n');
  
  MetodoPagamento cartao = CartaoCredito();
  Pagamentob pagamento = Pagamentob(cartao);
  pagamento.realizarPagamento(500);

 print('\n\n\n meio com alto acoplamento \n');

  CartaoCreditoa cartaoCreditoa = CartaoCreditoa();
  Pagamentoa pagamentoa = Pagamentoa(cartaoCreditoa);
  pagamentoa.realizarPagamento(500);
}

