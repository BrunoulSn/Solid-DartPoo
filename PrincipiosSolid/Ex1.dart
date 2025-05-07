//SRP - Refatore o código para que cada classe tenha apenas uma responsabilidade (ex: salvar usuário ou autenticar usuário).

import 'dart:io';

class UsuarioManager {

  // Método checar permissão de Usuário
  bool autenticar(String usuario, String senha) {
    //Retorna verdadeiro se o usuário e senha estiverem corretos
    return usuario == 'admin' && senha == '123';
  }
}

class UsuarioDb {
  // Instância da classe UsuarioManager
  final UsuarioManager usuarioManager = UsuarioManager();

//Método salvar usuário no banco de dados
  void salvarUsuario(String nome) {
    // Chama o método autenticar para verificar se o usuário tem permissão para salvar
    if (usuarioManager.autenticar('admin', '123')) {
      print('Usuário $nome salvo no banco de dados.');
    }
  }
}