/*4. Crie uma classe Produto com um atributo privado _nome.
O setter deve armazenar o nome com a primeira letra maiúscula.
O getter retorna o nome formatado.
dicas: utilize trim() toUpperCase() substring() e toLowerCase()*/

class Prooduto {
  String _nome = '';

  String get nome => _nome;

  set nome(String valor) {
    if (valor.trim().isNotEmpty) {
      valor = valor.trim();
      _nome = valor[0].toUpperCase() + valor.substring(1).toLowerCase();
    } else {
      print('bota um nome aqui cabeca de cabrunco');
    }
  }
}
