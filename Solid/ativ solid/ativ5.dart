/* DIP - Refatore para que RelatorioService dependa de uma abstração (interface) e não da classe concreta.

class MySQLDatabase {
  void salvar(String dado) {
    print('Salvando "$dado" no MySQL');
  }
}

class RelatorioService {
  final MySQLDatabase db;

  RelatorioService(this.db);

  void gerarRelatorio(String conteudo) {
    db.salvar(conteudo);
  }
} */

abstract class Database {
  void salvar(String dado);
}

class MySQLDatabase implements Database {
  @override
  void salvar(String dado) {
    print('Salvando "$dado" no MySQL');
  }
}

class RelatorioService {
  final Database bd;

  RelatorioService(this.bd);

  void gerarRelatorio(String conteudo) {
    print('exibindo relatório: $conteudo');
    bd.salvar(conteudo);
  }
}

void main() {
  Database mysql = MySQLDatabase();
  RelatorioService relatorioService = RelatorioService(mysql);

  relatorioService.gerarRelatorio('Relatório de vendas');
}