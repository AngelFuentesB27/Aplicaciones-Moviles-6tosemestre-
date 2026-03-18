class Vehiculo {
  String marca;
  String modelo;
  int anio;
  double velocidadMaxima;
  double velocidadActual = 0;

  Vehiculo(this.marca, this.modelo, this.anio, this.velocidadMaxima);

  void acelerar(double kmh) {
    velocidadActual += kmh;
    if (velocidadActual > velocidadMaxima) {
      velocidadActual = velocidadMaxima;
      print('Velocidad maxima alcanzada');
    }
  }

  void frenar(double kmh) {
    velocidadActual -= kmh;
    if (velocidadActual < 0) {
      velocidadActual = 0;
      print('El vehiculo esta detenido');
    }
  }

  void frenoEmergencia() {
    velocidadActual = 0;
    print('FRENO DE EMERGENCIA ACTIVADO');
  }

  bool estaDetenido() {
    return velocidadActual == 0;
  }

  void mostrarEstado() {
    print('''$marca $modelo ($anio)
    Velocidad Actual: $velocidadActual km/h''');
  }
}

void main(List<String> args) {
  var velocidadUno = Vehiculo('Toyota', 'Corolla', 2022, 180.0);
  print(velocidadUno.estaDetenido());
  velocidadUno.acelerar(60.0);
  velocidadUno.mostrarEstado();
  velocidadUno.acelerar(60.0);
  print(velocidadUno.velocidadActual);
  velocidadUno.acelerar(100.0);
  print(velocidadUno.velocidadActual);
  velocidadUno.frenar(50.0);
  print(velocidadUno.velocidadActual);
  velocidadUno.frenoEmergencia();
  print(velocidadUno.estaDetenido());
  velocidadUno.frenar(20.0);
  print('\n');
  var velocidadDos = Vehiculo('Chevrolet', 'Camaro', 2025, 390.0);
  print(velocidadDos.estaDetenido());
  velocidadDos.acelerar(90.0);
  velocidadDos.mostrarEstado();
  velocidadDos.acelerar(60.0);
  print(velocidadDos.velocidadActual);
  velocidadDos.acelerar(150.0);
  print(velocidadDos.velocidadActual);
  velocidadDos.frenar(100.0);
  print(velocidadDos.velocidadActual);
  velocidadDos.frenoEmergencia();
  print(velocidadDos.estaDetenido());
  velocidadDos.frenar(20.0);
}
