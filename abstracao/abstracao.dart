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

import 'Caminhao.dart';
import 'Carro.dart';
import 'Gato.dart';
import 'Cachorro.dart';
import 'Moto.dart';
import 'PagamentoCartao.dart';
import 'PagamentoPix.dart';

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

  //exemplo com meios de pagamento
  PagamentoPix pix = PagamentoPix(300);
  pix.realizaPagamento();
  pix.emitirComprovante();

  //pagamento cartao
  Pagamentocartao cartao = Pagamentocartao(300, 3);
  cartao.realizaPagamento();
  cartao.emitirComprovante();

  //carro
  Carro car = Carro();
  car.abastecer();
  car.ligar();
  car.desligar();
  car.businar();

  //moto
  Moto dt = Moto();
  dt.ligar();
  dt.businar();
  dt.desligar();
  dt.abastecer();

  Caminhao truck = Caminhao();
  truck.ligar();
  truck.businar();
  truck.desligar();
  truck.abastecer();
}