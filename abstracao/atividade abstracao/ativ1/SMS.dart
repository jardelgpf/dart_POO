import 'Notificacao.dart';

class SMS extends Notificacao{

@override
  void enviar(String mensagem) {
   print(mensagem);
  }
}