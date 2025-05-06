abstract class BancoDeDados {
  void salvar(String dado);
}

class MySQLDatabase implements BancoDeDados {
  @override
  void salvar(String dado) {
    print('Salvando "$dado" no MySQL');
  }
}

class RelatorioService {
  final BancoDeDados db;

  RelatorioService(this.db);

  void gerarRelatorio(String conteudo) {
    db.salvar(conteudo);
  }
}
