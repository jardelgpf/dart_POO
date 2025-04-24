import 'Pagamento.dart';

class PagamentoPix implements Pagamento {
double valorPagamento;

  PagamentoPix(this.valorPagamento);

@override
  void realizaPagamento(){
    print('pagamento realizado via PIX no valor de R\$ $valorPagamento');
  }

  void emitirComprovante(){
    print('Pagamento via PIX confirmado');
  }
}