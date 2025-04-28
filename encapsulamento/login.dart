class login {
  String _senhaCorreta = '123abc';
  int _tentativasRestantes = 3;

  bool autenticar(String senha){
    if(_tentativasRestantes == 0){
      print('tentativas expiradas');
      return false;
    }

    if(senha == _senhaCorreta){
      print('bem vindo ao sistema');
      return false;
    }else{
      _tentativasRestantes--;
      print('dados de acesso incorreto');
      print('voce tem ${_tentativasRestantes} tentativas');
      return false;
    }
  }
}