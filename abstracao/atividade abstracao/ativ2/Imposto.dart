abstract class Imposto{

  double calcular(double valor); //metodo abstrato

//metodo concreto - so precisa sobrescrever ele se usar implementacao
void  exibirImposto(double valor){
  double imposto = calcular(valor);
  print('Imposto sobre R\$ ${valor.toStringAsFixed(2)} é de R\$ ${imposto.toStringAsFixed(2)}');
} 

}