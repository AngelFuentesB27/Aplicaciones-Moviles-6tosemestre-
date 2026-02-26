import 'dart:io';

List<String> capturarPeliculas(List<String> peliculasFavoritas) {
  for (var i = 0; i < 5; i++) {
    print('Escribe una Pelicula Favorita:');
    peliculasFavoritas.add(stdin.readLineSync()!);
  }
  return peliculasFavoritas;
}

List<String> capturarColores(List<String> coloresFavoritos) {
  for (var i = 0; i < 5; i++) {
    print('Escribe un color Favorito:');
    coloresFavoritos.add(stdin.readLineSync()!);
  }
  return coloresFavoritos;
}

void agregarUnoListas(coloresFavoritos, peliculasFavoritas) {
  print('Escribe el color favorito a agregar:');
  coloresFavoritos.add(stdin.readLineSync()!);
  print('Escribe la pelicula favorita a agregar:');
  peliculasFavoritas.add(stdin.readLineSync()!);
}

void imprimirListas(coloresFavoritos, peliculasFavoritas) {
  print('Colores Favoritos');
  for (int i = 0; i < coloresFavoritos.length; i++) {
    print('${i + 1}. ${coloresFavoritos[i]}');
  }
  print('Peliculas Favoritas');
  for (int i = 0; i < peliculasFavoritas.length; i++) {
    print('${i + 1}. ${peliculasFavoritas[i]}');
  }
  print(
    'LA lista de colores Favoritos tiene : ${coloresFavoritos.length} elementos',
  );
  print(
    'LA lista de peliculas Favoritas tiene : ${peliculasFavoritas.length} elementos',
  );
}

void main(List<String> args) {
  List<String> coloresFavoritos = [];
  List<String> peliculasFavoritas = [];
  capturarColores(coloresFavoritos);
  capturarPeliculas(peliculasFavoritas);
  agregarUnoListas(coloresFavoritos, peliculasFavoritas);
  imprimirListas(coloresFavoritos, peliculasFavoritas);
}
