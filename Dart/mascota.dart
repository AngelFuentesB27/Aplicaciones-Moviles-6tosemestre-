class Mascota {
  String nombre;
  String especie;
  int _edad;
  double _peso;

  Mascota(this.nombre, this.especie, this._edad, this._peso);
  void mostrar() {
    print(
      'Nombre:[$nombre] | Especie:[$especie] | Edad:[$_edad] años | Peso: [$_peso] kg',
    );
  }
}

void main(List<String> args) {
  var mascotaUno = Mascota('Rocky', 'Perro', 3, 8.5);
  var mascotaDos = Mascota('Luna', 'gato', 1, 3.2);
  mascotaUno.mostrar();
  mascotaDos.mostrar();
}
