abstract class Cargo {
  double calcularSalario();
}

class Gerente extends Cargo {
  @override
  double calcularSalario() => 5000;
}

class Desenvolvedor extends Cargo {
  @override
  double calcularSalario() => 4000;
}

class CalculadoraSalario {
  double calcular(Cargo cargo) {
    return cargo.calcularSalario();
  }
}
