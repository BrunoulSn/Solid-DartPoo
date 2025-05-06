abstract class Trabalhador {
  void trabalhar();
}

abstract class Alimentador {
  void comer();
}

class Funcionario implements Trabalhador, Alimentador {
  @override
  void trabalhar() => print("Funcionário trabalhando");

  @override
  void comer() => print("Funcionário comendo");
}

class Robo implements Trabalhador {
  @override
  void trabalhar() => print("Robô trabalhando");
}
