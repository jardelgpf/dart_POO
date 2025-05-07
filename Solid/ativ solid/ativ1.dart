/* SRP - Refatore o código para que cada classe tenha apenas uma responsabilidade (ex: salvar usuário ou autenticar usuário).

class UsuarioManager {
  void salvarUsuario(String nome) {
    print('Usuário $nome salvo no banco de dados.');
  }

  bool autenticar(String usuario, String senha) {
    return usuario == 'admin' && senha == '123';
  }
} */

//MEU METODO
class UsuarioSalva {
  void salvarUsuario(String nome) {
    print('Usuário $nome salvo no banco de dados.');
  }
}

class UsuarioAutentica {
  bool autenticar(String usuario, String senha) {
    return usuario == 'admin' && senha == '123';
  }
}

void main() {
  UsuarioSalva salvador = UsuarioSalva();
  UsuarioAutentica autenticador = UsuarioAutentica();

  salvador.salvarUsuario('caipora');

  bool autenticado = autenticador.autenticar('ronaldo', '123');

  if (autenticado) {
    print('Usuário autenticado!');
  } else {
    print('Falha na autenticação.');
  }
}
