abstract class Trabalhador {
  // Método abstrato para trabalhar, deverá ser implementado nas subClasses que implementam a interface Trabalhador
  void trabalhar();
}

abstract class Alimentador {
  // Método abstrato para comer, deverá ser implementado nas subClasses que implementam a interface Alimentador
  void comer();
}

class Funcionario implements Trabalhador, Alimentador {
  // Implementação do método trabalhar da interface Trabalhador
  void trabalhar() => print("Funcionário trabalhando");

  // Implementação do método comer da interface Alimentador
  void comer() => print("Funcionário comendo");
}

class Robo implements Trabalhador {
  // Implementação do método trabalhar da interface Trabalhador
  void trabalhar() => print("Robô trabalhando");
}
