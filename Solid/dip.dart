/**
 *
 *  DIP - DEPENDENCY INVERSION PRINCIPLE
 */

/* class MysqlDatabase {
  void conectar() {
    print('Conectando ao banco de dados MySQL...');
  }
} 

class UsuarioService {
  final MysqlDatabase database;

  UsuarioService(this.database);

  void executar() {
    database.conectar();
  }
} */

/**
 * SOLUCAO
 */
abstract class Database {
  void conectar();
}

class Mysql implements Database {
  @override
  void conectar() {
    print('Conectando ao banco de dados MySQL...');
  }
}

class UsuarioService{
  final Database database;

  UsuarioService(this.database);

  void executar() {
    database.conectar();
  }
}