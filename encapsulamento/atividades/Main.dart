import 'ativ 1/Produto.dart';
import 'ativ 3/Cofrinho.dart';
import 'ativ 5/Estoque.dart';
import 'ativ2/Pessoa.dart';
import 'ativ 4/Prooduto.dart';

//atividade 1
void main() {

var p1 = Produto('notebook');
p1.preco = 3000;
print('${p1.nome} - R\$${p1.preco} reais');
p1.preco = 0;

  print('\n\n\n\n\n');

  //atividade 2
  Pessoa pe = Pessoa('João');
  
  pe.idade = 25; // Idade válida
  print('Nome: ${pe.nome}, Idade: ${pe.idade}');
  
  pe.idade = 150; // Idade inválida
  print('Nome: ${pe.nome}, Idade: ${pe.idade}');

  print('\n\n\n\n\n');

  //atividade 3
  
  Cofrinho porco = Cofrinho();

  porco.saldo = 100.0;
  print('Saldo atual: R\$${porco.saldo.toStringAsFixed(2)}');

  porco.saldo = -50.0;
  print('Saldo atual: R\$${porco.saldo.toStringAsFixed(2)}');

  porco.saldo = 300.0;
  print('Saldo atual: R\$${porco.saldo.toStringAsFixed(2)}');

  print('\n\n\n\n\n');

 //atividade 4
 
  Prooduto pr = Prooduto();

  pr.nome = 'papagaio pirueta';
  print('Nome do produto: ${pr.nome}');

  pr.nome = 'LAPIS PETENCOSTAL';
  print('Nome do produto: ${pr.nome}');

  print('\n\n\n\n\n');

  //atividade 5

  Estoque e = Estoque();

  e.quantidade = 10;
  print('Quantidade em estoque: ${e.quantidade}');

  e.quantidade = -5;
  print('Quantidade em estoque: ${e.quantidade}');

  e.quantidade = 20;
  print('Quantidade em estoque: ${e.quantidade}');
}
