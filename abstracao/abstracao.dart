/*
abstracao é o principio da programacao orientada a objetos (POO) que
permite ocultar os detalhes internos e mostrar apenas o que e relevante
para o uso de uma classe ou metodo.
é como dirigfir um carro: voce so precisa saber como usar o volante,
pedais e marcha. mas nao precisa saber como o motor funciona;
IMPORTANTE
- nao pode ser instanciada diretamente
- serve como modelo para outras classes
- pode ter metodos implementados e metodos sem implementacao (abstratos)
*/

import 'Gato.dart';
import 'Cachorro.dart';

void main(List<String> args) {
  Cachorro dog = Cachorro();
  dog.emitirSom();
  dog.dormir();

  Gato cat = Gato();
  cat.emitirSom();
  cat.dormir();

  //usando interface atraves do implements
  //quando usamos implements, a classe e obrigada a implementar tudo que existe na classe 
  //abstrata. incluindo metodos ja implementados
}