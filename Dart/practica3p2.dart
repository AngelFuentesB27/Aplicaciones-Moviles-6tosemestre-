class Figura {
  String nombre;
  double base;
  double altura;

  Figura(this.nombre, this.base, this.altura);
  Figura.cuadrado(this.base) : nombre = 'Cuadrado', altura = base;

  double area() {
    return base * altura;
  }
}

void main(List<String> args) {
  var figuraUno = Figura("Rectangulo", 100.0, 50.0);
  print("Area de la figura: ${figuraUno.area()}\n");

  var figuraDos = Figura.cuadrado(50.0);
  print("Area de la figura: ${figuraDos.area()}\n");
}
