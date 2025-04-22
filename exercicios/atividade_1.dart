class Aluno {

  String curso;
  String nome;
  int matricula;

  Aluno(this.curso, this.nome, this.matricula);

  void mostrarDados() {
    print('Nome: $nome');
    print('Matrícula: $matricula');
    print('Curso: $curso');
   
  }
}

void main() {

  Aluno aluno1 = Aluno('Analise e desenvolvimento de sistemas', 'Ana Clara', 12345);
  Aluno aluno2 = Aluno('somelier de cassetinho', 'Lucas Silva', 6969);

  aluno1.mostrarDados();
  aluno2.mostrarDados();
}

/*
JEITO DO PROFESSOR
class Aluno{
String? nome;
String? matricula;
String curso = '';

//definindo metodos
Void mostrarDados(){
print('Aluno: $nome Matricula: $matricula Curso: $curso');
}
}

void main(List<String> args) {
Aluno aluno1 = new Aluno();
aluno1.nome = 'Maria';
aluno1.matricula = '1234/2025';
aluno1.curso = 'Flutter';

Aluno aluno2 = new Aluno();
aluno2.nome = 'joaozinho';
aluno2.matricula = '2134/2025;
aluno2.curso = 'PHP';
}
*/