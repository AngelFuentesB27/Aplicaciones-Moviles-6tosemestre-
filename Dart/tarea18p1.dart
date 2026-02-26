import 'dart:io';

List<String> capturarNombres(List<String> nombres) {
  for (var i = 0; i < 4; i++) {
    print('Escribe un nombre:');
    nombres.add(stdin.readLineSync()!);
  }
  return nombres;
}

void buscarNombre(List<String> nombres) {
  print('Escribe tu nombre a buscar');
  String nombreBuscar = stdin.readLineSync()!;
  int indice = nombres.indexOf(nombreBuscar);
  if (indice >= 0) {
    print('$nombreBuscar existe y esta en la posicion $indice');
  } else {
    print('$nombreBuscar no existe');
  }
}

void main(List<String> args) {
  List<String> nombres = [];
  capturarNombres(nombres);
  buscarNombre(nombres);
}
