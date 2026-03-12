// == Ejercicio 1: Clase Persona ==

class Persona {
  // -- Atributos --
  String nombre;
  int edad;
  String ciudad;
  double estatura;

  // -- Constructor --
  Persona(this.nombre, this.edad, this.ciudad, this.estatura);

  // -- Metodo presentarse() --
  void presentarse() {
    print('Hola, me llamo $nombre, tengo $edad anios y vivo en $ciudad.');
  }

  // -- Metodo describir() --
  void describir() {
    print('Soy $nombre Mido $estatura metros.');
  }

  // -- Metodo esMayorDeEdad() --
  bool esMayorDeEdad() {
    return edad >= 18;
  }
}

void main() {
  // Crea tres objetos y llama a todos los metodos:
  var personaUno = Persona('Angel', 17, 'Victoria', 1.70);
  var personaDos = Persona('Mateo', 23, 'Mante', 1.50);
  var personaTres = Persona('IKer', 15, 'Aldama', 1.80);

  personaUno.presentarse();
  personaDos.presentarse();
  personaTres.presentarse();

  personaUno.describir();
  personaDos.describir();
  personaTres.describir();

  print(personaUno.esMayorDeEdad());
  print(personaDos.esMayorDeEdad());
  print(personaTres.esMayorDeEdad());
}
