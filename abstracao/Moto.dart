import 'Veiculo.dart';

class Moto extends Veiculo {

@override
  void ligar() {
  print('ligando a moto no pedal');
  }

  @override
  void desligar() {
  print('deixando a moto morrer');
  }
  @override
  void abastecer() {
  print('coloca 10zao ai');
  }

  @override
  void businar() {
   print('pi pi');
  }
}
