import 'Veiculo.dart';

class Carro extends Veiculo{
  @override
void ligar(){
  print('ligando o carro com chave');
}

void desligar(){
  print('desligando o carro');
}
void abastecer(){
  print('carro esta abastecido');
}
}