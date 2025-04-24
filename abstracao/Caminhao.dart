import 'Veiculo.dart';

class Caminhao implements Veiculo{

@override
  void ligar() {
   print('ligando o jacare');
  }
  @override
  void businar() {
   print('barulho alto do dhabo');
  }

@override
  void desligar() {
   print('quase explodindo para desligar');
  }
  @override
  void abastecer() {
   print('aceita rim como pagamento seu frentista');
  }
}