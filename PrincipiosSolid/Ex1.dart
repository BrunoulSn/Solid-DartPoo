//SRP - Refatore o código para que cada classe tenha apenas uma responsabilidade (ex: salvar usuário ou autenticar usuário).

import 'dart:io';

class UsuarioManager {
  bool autenticar(String usuario, String senha) {
    return usuario == 'admin' && senha == '123';
  }
}

class UsuarioDb {
  UsuarioManager usuarioManager = UsuarioManager();

  void salvarUsuario(String nome) {
    if (usuarioManager.autenticar(
        stdin.readLineSync()!, stdin.readLineSync()!)) {
      print('Usuário $nome salvo no banco de dados.');
    }
  }
}

