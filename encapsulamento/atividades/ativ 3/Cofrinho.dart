/*3. Crie uma classe Cofrinho com um atributo privado _saldo.
Use um getter para retornar o saldo.
O setter deve permitir adicionar valores positivos ao saldo, recusando 
valores negativos ou zero.
*/
class Cofrinho {
  double _saldo = 0.0;

  double get saldo => _saldo;

  set saldo(double deposito) {
    if (deposito > 0) {
      _saldo += deposito;
      print('Valor de R\$${deposito.toStringAsFixed(2)} adicionado ao cofrinho.');
    } else {
      print('como tu vai adicionar um valor negativo o animal?');
    }
  }
}