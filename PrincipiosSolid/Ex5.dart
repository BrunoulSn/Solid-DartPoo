abstract class BancoDeDados {
  // Método abstrato para salvar dados, deverá ser implementado por cada subclasse
  void salvar(String dado);
}

class MySQLDatabase implements BancoDeDados {
  // Implementação do método salvar para o banco de dados MySQL
  void salvar(String dado) {
    print('Salvando "$dado" no MySQL');
  }
}

class RelatorioService {
  final BancoDeDados db;

// Construtor da classe RelatorioService, recebe um objeto do tipo BancoDeDados
  RelatorioService(this.db);

  void gerarRelatorio(String conteudo) {
    // Gera o relatório e salva no banco de dados
    db.salvar(conteudo);
  }
}
