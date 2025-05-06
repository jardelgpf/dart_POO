/**
 * SINGLE RESPONSIBILITY PRINCIPLE (SRP)
 * VIOLANDO O SRP
 * neste exemplo a classe relatorioService tem mais de uma responsabilidade: gerar e enviar o relatorio.
 */

class RelatorioService{

  void gerarRelatorio(){
    print('relatorio gerado com sucesso!');
  }

  void enviarEmail(){
    print('email enviado com sucesso!');
  }
}

/**
 * SOLUCAO
 * separando as responsabilidades: uma classe para gerar o relatorio e outra para enviar o email.
 * assim, cada classe tem uma unica responsabilidade e o codigo fica mais organizado e facil de manter.
 */
class RelatorioGerador{
  void gerar(){
  print('relatorio gerado com sucesso!');
  }
}

class RelatorioEnviador{
void enviar(){
    print('email enviado com sucesso!');
  }
}