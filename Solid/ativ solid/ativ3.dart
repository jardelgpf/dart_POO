/* LSP - Refatore para que Quadrado não quebre o comportamento esperado do Retangulo. Ou, se necessário, crie uma hierarquia adequada.

class Retangulo {
  double largura;
  double altura;

  Retangulo(this.largura, this.altura);

  double area() => largura * altura;
}

class Quadrado extends Retangulo {
  Quadrado(double tamanho) : super(tamanho, tamanho);
} */


abstract class Formas {
  double area();
}

class Retangulo implements Formas {
  double largura;
  double altura;

  Retangulo(this.largura, this.altura);

  @override
  double area() => largura * altura;
}

class Quadrado implements Formas {
  double tamanho;

  Quadrado(this.tamanho);

  @override
  double area() => tamanho * tamanho;
}

void main() {
  Formas retangulo = Retangulo(5, 10);
  Formas quadrado = Quadrado(4);

  print('Área do Retângulo: ${retangulo.area()}');
  print('Área do Quadrado: ${quadrado.area()}');
}