/**
 * ACOPLAMENTO E COESAO
 * Refere-se ao nivel de foco e responsabilidade unica de uma classe.
 * Uma classe coesa faz apenas uma coisa e faz bem feito.
 * alta coesao facilita manutencao, testes e reutilizacao
 * exemplo
 * uma classe RelatorioPDF deve gerar PDF e nao cuidar da autenticacao do usuario
 */

class RelatorioBaguncado{
  void gerarPDF(){
    print('gerando PDF...');
  }

  void autenticar(){
    print('autenticando...');
  }

  void enviarEmail(){
    print('enviando email...');
  }
}
//essa classe faz muita coisa ou seja, baixa coesao