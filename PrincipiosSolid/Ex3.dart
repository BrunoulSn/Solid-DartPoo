abstract class Forma {
  double area();
}

class Retangulo extends Forma {
  double largura;
  double altura;

  Retangulo(this.largura, this.altura);

  @override
  double area() => largura * altura;
}

class Quadrado extends Forma {
  double tamanho;

  Quadrado(this.tamanho);

  @override
  double area() => tamanho * tamanho;
}
