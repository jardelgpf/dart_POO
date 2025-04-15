//classe com construtor definido
/**
 * o construtor é um metodo especial chamado ao instanciar objetos a partir de uma classe.
 * ele é chamado automaticamente quando usamos o new para instanciar objetos de uma classe.
 */
class Animal {
  String nome;
  double peso;
  String raca = 'indefinido';

  //definindo construtor
  Animal(this.nome, this.peso);

  //metodos
  void comer(){
    print('$nome está comendo');
  }
}

void main(List<String> args) {
  Animal gato = new Animal('lola', 2.1);
  gato.raca = 'Vira lata';
  gato.comer();
}