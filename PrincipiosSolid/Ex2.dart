abstract class Cargo {
  // Método para calcular o salário do cargo, deverá ser implementado por cada subclasse
  double calcularSalario();
}

class Gerente extends Cargo {
  // Implementação do método calcularSalario para o cargo de Gerente, e retorna o salário
  double calcularSalario() => 5000;
}

class Desenvolvedor extends Cargo {
  // Implementação do método calcularSalario para o cargo de Desenvolvedor, e retorna o salário
  double calcularSalario() => 4000;
}

class CalculadoraSalario {
  // Método para calcular o salário de um cargo, recebe um objeto do tipo Cargo
  double calcular(Cargo cargo) => cargo.calcularSalario();
  
}
