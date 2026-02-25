import 'dart:io';

List<int> valores() {
  List<int> numeros = [];
  for (int i = 1; i <= 10; i++) {
    String? entrada = stdin.readLineSync();
    int numero = int.parse(entrada ?? '0');
    numeros.add(numero);
  }
  return numeros;
}

void main() {
  print('Introduce 10 numeros enteros: ');
  List<int> numeros = valores();
  for (int i = 0; i < numeros.length; i++) {
    print("\n${numeros[i]}");
  }
}
