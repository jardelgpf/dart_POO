import 'Arqueiro.dart';
import 'Mago.dart';
import 'Personagem.dart';
import 'guerreiro.dart';

/**
 * Polimorfismo significa 'muitas formas' do grego: poli = muitos e morphos = formas.
 * na POO o polimorfismo permite que objetos de diferentes classes possam ser 
 * tratados de forma uniforme - desde que compartilhem uma interface comum 
 * (ou herança de uma superclasse ou classe abstrata).
 * vantagens
 * o polimorfismo permite escrever codigo mais generico, reutilizavel e
 * flexivel, facilitando extensoes futuras sem alterar o codigo existente.
 */

void main(List<String> args) {
  List<Personagem> personagens = [
    Guerreiro(),
    Mago(),
    Arqueiro()
  ];

  for(var p in personagens){
    p.atacar();//todos usam o mesmo metodo com comportamentos diferentes
  }
}