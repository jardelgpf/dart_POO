import 'FuncionarioCLT.dart';
import 'FuncionarioPJ.dart';
void main() {
  FuncionarioCLT clt = FuncionarioCLT('ronaldo', 5000, 500, 150);
  FuncionarioPJ pj = FuncionarioPJ('douglas', 10000);

  clt.exibirDados();
  pj.exibirDados();
}
