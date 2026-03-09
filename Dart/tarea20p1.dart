import 'dart:io';

void agregarEstudiantes(List<Map<String, dynamic>> estudiantes) {
  for (var i = 0; i < 3; i++) {
    Map<String, dynamic> mapaestudiantes = {};
    Map<String, dynamic> datosEstudiantes = {};
    print('Ingresa el nombre del estudiante');
    String estudiante = stdin.readLineSync()!;
    print('Ingresa la edad del estudiante');
    datosEstudiantes['edad'] = int.parse(stdin.readLineSync()!);
    print('Ingresa el promedio del estudiante');
    datosEstudiantes['promedio'] = double.parse(stdin.readLineSync()!);
    mapaestudiantes[estudiante] = datosEstudiantes;
    estudiantes.add(mapaestudiantes);
  }
}

void imprimirDatosEStudiantes(List<Map<String, dynamic>> estudiantes) {
  print('\n==== DATOS ESTUDIANTES====');
  for (var estudiante in estudiantes) {
    estudiante.forEach((clave, valor) {
      print(
        'Estudiante :$clave Edad:${valor['edad']} Promedio:${valor['promedio']}',
      );
    });
  }
}

void calcularpromedioClase(List<Map<String, dynamic>> estudiantes) {
  double suma = 0.0;
  for (var estudiante in estudiantes) {
    estudiante.forEach((clave, valor) {
      suma += valor['promedio'];
    });
  }
  print('El promedio total de la clase es: ${suma / estudiantes.length}');
}

void main(List<String> args) {
  List<Map<String, dynamic>> estudiantes = [];
  agregarEstudiantes(estudiantes);
  imprimirDatosEStudiantes(estudiantes);
  calcularpromedioClase(estudiantes);
}
