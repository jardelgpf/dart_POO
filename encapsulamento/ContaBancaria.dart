class Contabancaria {
  String titular;
  double _saldo = 0; //atributo privado

  Contabancaria(this.titular);

  //metodo publico para acessar saldo
  double getSaldo(){
    return _saldo;
  }
  
  bool depositar(double valor){
    if(valor > 0){
      _saldo += valor;
      return true;
    }
    return false;
  }

  bool sacar(double valor){
    if(_saldo >= valor){
      _saldo -= valor;
      return true;
    }
    return false;
  }
}