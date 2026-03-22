class Triangulo {
  double _base;
  double _altura;

  Triangulo(this._base, this._altura);

  double get base => _base;
  double get altura => _altura;

  double get calcularArea => (_base * _altura) / 2;
  double get baseEnCm => base * 100;
  String get etiqueta => '''Base:$_base metros | Altura:$_altura metros
  Area:$calcularArea metros Base en cm:$baseEnCm''';
}

void main(List<String> args) {
  var triangulo = Triangulo(10.50, 20.5);
  print(triangulo.altura);
  print(triangulo.base);
  print(triangulo.calcularArea);
  print(triangulo.baseEnCm);
  print(triangulo.etiqueta);
}
