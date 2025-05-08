/**
 * Associação
Crie duas classes: Livro e Autor. Um livro tem um autor, e um autor pode ter vários livros.
Exiba o nome do autor ao listar um livro.
*/

class Autor {
  final String nome;
  final List<Livro> livros = [];

  Autor(this.nome);

  void adicionarLivro(Livro livro) {
    livros.add(livro);
  }
}

class Livro {
  final String titulo;
  final Autor autor;

  Livro(this.titulo, this.autor);

  void exibir() => print('Título: $titulo, Autor: ${autor.nome}');
}

void main() {
 
Autor a1 = Autor('clarice lispector');
Livro l1 = Livro('A hora da estrela', a1);
Livro l2 = Livro('A paixão segundo G.H.', a1);

l1.exibir();
l2.exibir();

print('\n Livros do autor ${a1.nome}: ');
for(var livro in a1.livros) {
  print('Livro: ${livro.titulo}');
}
}