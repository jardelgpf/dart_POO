// 1. Crie uma classe abstrata Notificacao com um método enviar(String mensagem). 
//Depois, crie as classes concretas Email e SMS que implementam esse método de forma diferente. No main(), envie duas mensagens usando as duas formas de notificação.

abstract class Notificacao {
//metodo abstrato assinado - torna obrigatoria a implementacao e onde usar
  void enviar(String mensagem);
  
}