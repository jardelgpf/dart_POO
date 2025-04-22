/*
heranca e um dos pilares da programacao orientada a objetos (POO).
ela permite que uma classe herde atributos e metodos de outra classe, promovendo a
teurilizacao de codigo e especializacao do comportamento.

termo        |  explicacao
superclasse  |  a classe base que sera herdada (tambem chama de classe pai)
subclasse    |  a classe que herda da superclasse (tambem chamade de classe filha)
extends      |  palavra-chave usada para definir heranca
super        |  palavra-chave usada para acessar membros da superclasse
*/

import 'Cachorro.dart';
import 'Gato.dart';
import 'Aluno.dart';
void main(List<String> args) {
  Cachorro dog = new Cachorro();
  dog.dormir();
  dog.latir();
  /*
  SOBRESCRITA DE METODOS
  a sublacsse (filha) pode sobrescrever metodos da superclasse (pai) @override
  a anotacao @override é opcional, porem e mais seguro utilizar para seguranca no codigo
  a mivel de compilacao para evitar erros de digitacao.
  usar @override deixa claro que voce esta sobescrevendo um metodo que existe na classe pai.
  isso facilita a leitura e manutencao do codigo.
  */


Gato cat = new Gato();
cat.emitirSom();

/*
CONSTRUTORES E SUPER
a subclasse pode chamar o construtor da classe pai usando a palavra super
*/

Aluno aluno = Aluno('diego','flutter');
print('o alubo ${aluno.nome} esta cursando ${aluno.curso}');


}