void main() {
  /*
    Ejercicio 1.2: Conversión de Tipos
    Descripción: Realiza conversiones entre diferentes tipos de datos.
    Requisitos:
    Convierte un String a int: “42”
    Convierte un int a String: 123
    Convierte un int a double: 50
    Imprime los resultados y sus tipos
    Pista: Usa .parse() para conversiones y .toString() para convertir a String
  */
  String numero_string = '42';
  int numero_int = 123;
  int numero_dos_int = 50;

  int numero_string_int = int.parse(numero_string);
  String numero_int_string = numero_int.toString();
  double numero_dos_int_double = numero_dos_int
      .toDouble(); //investigado da error en parse()

  print(numero_string_int);
  print(numero_int_string);
  print(numero_dos_int_double);
}
