import 'ImpostoP.dart';
import 'ImpostoR.dart';

void main(List<String> args) {
  ImpostoRenda ir = ImpostoRenda();
  Impostoprod ip = Impostoprod();
  ip.exibirImposto(3000);
  ir.exibirImposto(10000);

}
 
