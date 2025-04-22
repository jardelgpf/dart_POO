import 'Pessoa.dart';

class Aluno extends Pessoa{
  String matricula;

  Aluno(String nome, int idade, this.matricula) : super(nome, idade);
  
  void exibirDados(){
    print('Aluno: $nome Idade: $idade Matricula: $matricula');
  }

}