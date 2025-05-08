/**
 * Coesão
 * Crie duas versões de uma classe CalculadoraFinanceira: 
 * uma com alta coesão (apenas cálculos) 
 * e outra com baixa coesão (mistura de funções). Compare as abordagens.
 */

class CalculadoraAlta {
  double calcularJuros(double valor, double taxa, int meses) {
    return valor * taxa * meses;
  }

  double calculatudokrai (double valor, double taxa, int meses) {
    return valor + calcularJuros(valor, taxa, meses);
  }
}

class CalculadoraBaixa {
  double calcularJuros(double valor, double taxa, int meses) {
    return valor * taxa * meses;
  }

  void salvarHist(String operacao) {
    print('Salvando operação: $operacao');
  }

  void enviarEmail(String email) {
    print('Enviando para: $email');
  }
}

void main() {
  CalculadoraAlta calcA = CalculadoraAlta();

  double jurosa = calcA.calcularJuros(500, 0.10, 10);
  double total = calcA.calculatudokrai(500, 0.10, 10);

  print('Juros: R\$${jurosa.toStringAsFixed(2)}');
  print('totalkrai: R\$${total.toStringAsFixed(2)}');

  print('agora a calculadora baixa \n\n\n\n\n');
  
   CalculadoraBaixa calcB = CalculadoraBaixa();

  double jurosb = calcB.calcularJuros(500, 0.10, 10);
  calcB.salvarHist('Cálculo de juros realizado');
  calcB.enviarEmail('exemplo@email.com');

  print('Juros: R\$${jurosb.toStringAsFixed(2)}');
}