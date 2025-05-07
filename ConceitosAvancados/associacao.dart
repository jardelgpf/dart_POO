/**
 * ASSOCIACAO
 * Relacionamento generico entre classes
 * uma classe conhece a outra
 * exemplo: Professor <--> Departamento
 * O professor trabalha em um departamento
 * Departamento conhece o professor, mas eles vivem independentemente 
 */

class Professor {
  String nome;
  Professor(this.nome);
}
class Departamento {
  String nome;
  List<Professor> professores = [];

  Departamento(this.nome);

  void adicionarProfessor(Professor p) {
    professores.add(p);
  }
}

//imagine duas classes Paciente e Medico.
/**
 * um paciente pode ter um medico associado, e o medico pode ter varios pacientes
 */

class Medico {
  String nome;
  Medico(this.nome);
}

class Paciente{
  String nome;
  Medico? medico; //associacao opcional, paciente pode nao ter medico.
  Paciente(this.nome);

  void associarMedico(Medico m) {
    medico = m;
  }

  void mostrarInfos(){
    print('Paciente: $nome');
    if (medico != null) {
      //o ! apos o medico e o operador null assertion operator (negacao de nulidade)
      print('Medico: ${medico!.nome}');
    } else {
      print('Sem medico associado.');
    }
  }
}

