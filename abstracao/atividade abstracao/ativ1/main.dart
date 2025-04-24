import 'Email.dart';
import 'SMS.dart';

void main(List<String> args) {
  
  Email mail = Email();
  mail.enviar('enviando por e-mail');

  SMS sms = SMS();
  sms.enviar('enviando por sms');
}