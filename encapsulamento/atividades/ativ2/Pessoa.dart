class Pessoa {
  String nome;
  int _idade = 0;

  Pessoa(this.nome);

  int get idade => _idade;

  set idade(int valor) {
    if (valor >= 0 && valor <= 120) {
      _idade = valor;
    } else {
      print('esse meliante tem que ter entre 0 e 120.');
    }
  }
}