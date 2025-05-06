/* OCP - Refatore o código para que ele suporte novos cargos sem precisar modificar a classe CalculadoraSalario.

class CalculadoraSalario {
  double calcular(String cargo) {
    if (cargo == 'gerente') return 5000;
    if (cargo == 'desenvolvedor') return 4000;
    return 0;
  }
} */

abstract class Cargo {
  double calcularSalario();
}

class Gerente implements Cargo {
  @override
  double calcularSalario() {
    return 5000;
  }
}

class Desenvolvedor implements Cargo {
  @override
  double calcularSalario() {
    return 4000;
  }
}

class CalculaSalario {
  double calcular(Cargo cargo) {
    return cargo.calcularSalario();
  }
}

void main() {
  CalculaSalario calculadora = CalculaSalario();

  Cargo gerente = Gerente();
  Cargo desenvolvedor = Desenvolvedor();

  print('Salário do gerente: R\$${calculadora.calcular(gerente)}');
  print('Salário do desenvolvedor: R\$${calculadora.calcular(desenvolvedor)}');
}