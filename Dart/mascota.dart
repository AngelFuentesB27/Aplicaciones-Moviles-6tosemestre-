class Mascota {
  String nombre;
  String especie;
  int _edad;
  double _peso;

  Mascota(this.nombre, this.especie, this._edad, this._peso);

  int get edad => _edad;

  double get peso => _peso;

  bool get esCachorro => _edad < 2;

  String get descripcion => '$nombre ($especie) | $_edad años | $_peso kg';
}

void main(List<String> args) {
  var rocky = Mascota('Rocky', 'Perro', 3, 8.5);
  var luna = Mascota('Luna', 'gato', 1, 3.2);
  print(rocky.edad);
  print(rocky.peso);
  print(rocky.esCachorro);
  print(rocky.descripcion);

  print(luna.edad);
  print(luna.peso);
  print(luna.esCachorro);
  print(luna.descripcion);
}
