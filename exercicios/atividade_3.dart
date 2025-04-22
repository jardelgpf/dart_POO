class Empresa {

  String nome;
  String ramo;
  int numerofun;

  Empresa(this.nome, this.ramo, this.numerofun);

  void resumo() {
    print('nome da empresa: $nome');
    print('ramo que a $nome atua: $ramo');
    print('quantidade de funcionarios: $numerofun');
  }
}

void main(List<String> args) {
  Empresa empresa1 = Empresa('Jthom eletronicos', 'tecnologia', 2);
  Empresa empresa2 = Empresa('privacy', 'entreterimento', 150);

  empresa1.resumo();
  empresa2.resumo();
}