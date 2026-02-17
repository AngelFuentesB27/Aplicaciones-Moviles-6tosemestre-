String saludarPersona(String nombre) => 'Hola, $nombre! Bienvenido a Dart';

String multiplicar(int a, int b) => '$a x $b = ${a * b}';

String esMayorDeEdad(int edad) {
  return edad >= 18
      ? 'Edad $edad: ¡Eres mayor de edad!'
      : 'Edad $edad: Aún eres menor de edad';
}

void main() {
  print('Saludos Personalizados:\n');
  print(saludarPersona('Juan'));
  print(saludarPersona('Maria'));
  print(saludarPersona('Carlos'));

  print('\nMultiplicaciones:\n');
  print(multiplicar(5, 3));
  print(multiplicar(10, 4));

  print('\nValidacion edad:\n');
  print(esMayorDeEdad(25));
  print(esMayorDeEdad(16));
  print(esMayorDeEdad(18));
}
