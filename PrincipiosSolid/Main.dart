import 'Ex2.dart';
import 'Ex3.dart';
import 'Ex4.dart';
import 'Ex5.dart';
import 'PrincipiosSolid/Ex1.dart';

void main(List<String> args) {
   // 1. Testando SRP - Responsabilidade Única
  var usuarioManager = UsuarioManager();
  var usuarioDb = UsuarioDb();
  print("Testando SRP...");
  usuarioDb.salvarUsuario("João");
  
  // 2. Testando OCP - Princípio Aberto/Fechado
  var calculadoraSalario = CalculadoraSalario();
  print("\nTestando OCP...");
  var gerente = Gerente();
  var desenvolvedor = Desenvolvedor();
  print("Salário do Gerente: ${calculadoraSalario.calcular(gerente)}");
  print("Salário do Desenvolvedor: ${calculadoraSalario.calcular(desenvolvedor)}");
  
  // 3. Testando LSP - Princípio da Substituição de Liskov
  print("\nTestando LSP...");
  var retangulo = Retangulo(10, 5);
  var quadrado = Quadrado(5);
  print("Área do Retângulo: ${retangulo.area()}");
  print("Área do Quadrado: ${quadrado.area()}");

  // 4. Testando ISP - Princípio da Segregação de Interfaces
  print("\nTestando ISP...");
  var funcionario = Funcionario();
  var robo = Robo();
  funcionario.trabalhar();
  funcionario.comer();
  robo.trabalhar();
  
  // 5. Testando DIP - Princípio da Inversão de Dependência
  print("\nTestando DIP...");
  var mySQLDatabase = MySQLDatabase();
  var relatorioService = RelatorioService(mySQLDatabase);
  relatorioService.gerarRelatorio("Relatório de Vendas do Mês");
}