import 'Bicicreta.dart';
import 'Carro.dart';
import 'Veiculo.dart';
void main() {
  Veiculo car = Carro();
  car.mover();
  
  Veiculo bicicreta = Bicicreta();    
  bicicreta.mover();  
}