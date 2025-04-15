class Carro{
  
  //propriedades

  String? modelo;
  int? ano;
  bool ligado = false;

  //metodos
  String apresentar(){//da pra usar com string e return ao invez do void e print mas na parte megane tera que colocar o print ao invez de so o megane.apresentar()
    return'Carro: $modelo Ano: $ano.';
  }

  void ligar(){
    ligado = true;
    print('O $modelo está sendo ligado!');
  }

  void dirigir(){
    if(ligado){
    print ('Dirigindo $modelo.');
  }else{
    print('para dirigir,ligue o carro...');
  }
  }
}