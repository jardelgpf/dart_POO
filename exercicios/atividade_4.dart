class Livro {

  String titulo;
  String autor;
  int paginas;

  Livro(this.titulo,this.autor,this.paginas);
void descricao(){
  print('o livro $titulo foi escrito pelo autor(a) $autor e possui: $paginas paginas');
}
}

void main(List<String> args) {
  Livro livro1 = Livro('A unica verdade','algum louco ai',277);
  Livro livro2 = Livro('degusta forte','Mr Catra',69);

  livro1.descricao();
  livro2.descricao();
}