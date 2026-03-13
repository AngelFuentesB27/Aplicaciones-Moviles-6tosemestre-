class Rectangulo {
  double base;
  double altura;

  Rectangulo(this.base, this.altura);

  double calcularArea() {
    return base * altura;
  }

  double calcularPerimetro() {
    return 2 * (base + altura);
  }

  bool esCuadrado() {
    return base == altura;
  }

  void mostrarDatos() {
    print('''Rectangulo: base=$base altura=$altura
  Area: ${base * altura}
  Perimetro: ${2 * (base + altura)}\n''');
  }

  void escalar(double factor) {
    base = base * factor;
    altura = altura * factor;
  }
}

void main(List<String> args) {
  var rectangulo1 = Rectangulo(4.0, 6.0);
  print(rectangulo1.calcularArea());
  print(rectangulo1.calcularPerimetro());
  print(rectangulo1.esCuadrado());
  rectangulo1.escalar(2.0);
  print(rectangulo1.base);
  print(rectangulo1.altura);
  rectangulo1.mostrarDatos();
  var rectangulo2 = Rectangulo(10.0, 20.0);
  print(rectangulo2.calcularArea());
  print(rectangulo2.calcularPerimetro());
  print(rectangulo2.esCuadrado());
  rectangulo2.escalar(2.0);
  print(rectangulo2.base);
  print(rectangulo2.altura);
  rectangulo2.mostrarDatos();
  var rectangulo3 = Rectangulo(1.0, 1.0);
  print(rectangulo3.calcularArea());
  print(rectangulo3.calcularPerimetro());
  print(rectangulo3.esCuadrado());
  rectangulo3.escalar(2.0);
  print(rectangulo3.base);
  print(rectangulo3.altura);
  rectangulo3.mostrarDatos();
  var rectangulo4 = Rectangulo(15.0, 25.0);
  print(rectangulo4.calcularArea());
  print(rectangulo4.calcularPerimetro());
  print(rectangulo4.esCuadrado());
  rectangulo4.escalar(2.0);
  print(rectangulo4.base);
  print(rectangulo4.altura);
  rectangulo4.mostrarDatos();
}
