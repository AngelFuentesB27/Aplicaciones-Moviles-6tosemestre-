class Velocimetro {
  double _velocidad;

  Velocimetro() : _velocidad = 0.0;

  double get velocidad => _velocidad;

  set velocidad(double nuevoValor) {
    if (nuevoValor >= 0.0 && nuevoValor <= 200.0) {
      _velocidad = nuevoValor;
    } else {
      print('Velocidad inválida: $nuevoValor. Debe estar entre 0 y 200');
    }
  }

  String get situacion {
    if (_velocidad >= 150.0) return 'Peligroso';
    if (_velocidad >= 100.0) return 'Rápido';
    if (_velocidad >= 50.0) return 'Normal';
    if (_velocidad > 0.0) return 'Lento';
    return 'Estacionado';
  }
}

void main(List<String> args) {
  var velocidad = Velocimetro();
  print(velocidad.situacion);
  velocidad.velocidad = 0.5;
  print(velocidad.velocidad);
  print(velocidad.situacion);
  velocidad.velocidad = 55.5;
  print(velocidad.velocidad);
  print(velocidad.situacion);
  velocidad.velocidad = 105.0;
  print(velocidad.velocidad);
  print(velocidad.situacion);
  velocidad.velocidad = 155.6;
  print(velocidad.velocidad);
  print(velocidad.situacion);
}
