class Empleado {
  String _nombre;
  double _salario;

  Empleado(this._nombre, this._salario);

  // Getters simples
  String get nombre => _nombre; // Lee _nombre
  double get salario => _salario; // Lee _salario 555
  // Nota: NO hay getter para _rfc — es completamente privado
}

void main() {
  var empleado = Empleado('Laura Pérez', 12000.0);

  print(empleado.nombre); // Laura Pérez  ← usa el getter
  print(empleado.salario); // 12000.0      ← usa el getter
  // print(empleado.rfc);      // Error: el getter no existe
  // print(empleado._rfc);     // Error si es otro archivo
}
