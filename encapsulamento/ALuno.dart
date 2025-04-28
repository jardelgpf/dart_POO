class ALuno{
  String nome;
  double _nota = 0;

  ALuno(this.nome);

  double get nota => _nota;

  set nota(double valor){
    if(valor >= 0 && nota <= 10){
      _nota = valor;
    }else{
      print('a nota esta fora do intervalo permitido.');
    }
  }

  String get situacao => _nota >= 7 ? 'Aprovado' : 'Reprovado';

//sintaxe com bloco
  String get situacaoAluno{
    if(_nota >= 7){
      return 'Aprovado';
    }else{
      return 'Reprovado';
    }
  }
}