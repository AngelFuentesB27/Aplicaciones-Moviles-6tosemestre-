class Bicicleta {
  String marca;
  String modelo;
  String color;
  double _precioPorHora;
  int _numeroDeSerie;
  int _rentasRealizadas;
  bool _estaRentada;

  Bicicleta(this.marca, this.modelo, this.color, this._precioPorHora)
    : _rentasRealizadas = 0,
      _estaRentada = false,
      _numeroDeSerie = 0;

  mostrarInformacion() {
    print(
      'Marca de la bicicleta: ${marca} Modelo: ${modelo} Color:${color} Precio por Hora:${precioPorHora} ',
    );
  }
}

void main(List<String> args) {
  var bicicletaUno = Bicicleta('Volt', 'Super3000', 'Azul', 10.50);
  bicicletaUno.mostrarInformacion();
  var bicicletaDos = Bicicleta('Apache', 'Razer777', 'Blanco', 50.50);
  bicicletaDos.mostrarInformacion();
}
