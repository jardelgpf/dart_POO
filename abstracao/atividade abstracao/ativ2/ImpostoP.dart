import 'Imposto.dart';

class Impostoprod extends Imposto{
  @override
  
  double calcular(double valor) {
return  valor*0.07;
  }
}