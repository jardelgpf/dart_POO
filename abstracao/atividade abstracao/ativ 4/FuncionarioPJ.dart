import 'Funcionarios.dart';
class FuncionarioPJ extends Funcionario {

FuncionarioPJ(String nome, double salarioBase) :
super(nome, salarioBase);

@override
  double salarioLiquido(){
    return salarioBase;
  }
}
