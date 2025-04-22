class Conta{
  //atributos
  double saldo = 0;
  String cliente;
  String conta;

   Conta (this.cliente, this.conta);

   //depositar um valor 
   bool depositar(double valor){
    if(valor > 0){
      saldo = saldo + valor;
      //ou saldo += valor seria o mesmo que o acima
      return true;
    }
    return false;
   }

   bool sacar(double valor){
    if(saldo >= valor && valor > 0){
      saldo -= valor;
      return true;
    }
    return false;
   }

   //verificar valores disponiveis na conta
    double getSaldo(){
      return saldo;
    }
  }

  //usar a classe
  void main(List<String> args) {
  
  Conta c1 = new Conta('Tafareu', '6969-9');
  if(c1.depositar(100.00)){
    print('Deposito realizado com sucesso.');
  }else{
    print('voce precisa depositar algum valor');
  }

  print('Cliente: ${c1.cliente} Conta: ${c1.conta} Saldo: ${c1.getSaldo()}');

  print('Sacar');
  if(c1.sacar(50)){
    print('Saque realizado com sucesso');
    print('Saldo atual: ${c1.getSaldo()}');
  }else{
    print('Saldo insuficiente para realizar o saque');
  }
}