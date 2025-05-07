abstract class Forma {
  // Método abstrato para calcular a área da forma, deverá ser implementado por cada subclasse
  double area();
}

class Retangulo extends Forma {
  double largura;
  double altura;

// Construtor da classe Retangulo, recebe largura e altura
  Retangulo(this.largura, this.altura);

  // Implementação do método area para calcular a área do retângulo
  double area() => largura * altura;
}

class Quadrado extends Forma {
  double tamanho;

// Construtor da classe Quadrado, recebe o tamanho do lado
  Quadrado(this.tamanho);

  // Implementação do método area para calcular a área do quadrado
  double area() => tamanho * tamanho;
}
