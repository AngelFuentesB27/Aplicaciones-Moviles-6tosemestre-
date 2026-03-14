class Alumno {
  String nombre;
  String matricula;
  double calificacionUno;
  double calificacionDos;
  double calificaionTres;

  Alumno(
    this.nombre,
    this.matricula,
    this.calificacionUno,
    this.calificacionDos,
    this.calificaionTres,
  );
  double calcularPromedio() {
    return (calificacionUno + calificacionDos + calificaionTres) / 3;
  }

  bool aprobo() {
    double promedio = (calificacionUno + calificacionDos + calificaionTres) / 3;
    return promedio > 6;
  }

  String obtenerEstatus() {
    double promedio = (calificacionUno + calificacionDos + calificaionTres) / 3;
    if (promedio >= 6) {
      return 'Aprobado';
    } else {
      return 'Reprobado';
    }
  }

  void mostrarBoleta() {
    print('''---Boleta---
    Nombre: $nombre
    Matricula: $matricula
    Parcial 1: $calificacionUno
    Parcial 2: $calificacionDos
    Parcial 3: $calificaionTres
    Promedio: ${calcularPromedio()}
    Estatus: ${obtenerEstatus()}\n''');
  }
}

void main(List<String> args) {
  var alumnoUno = Alumno('Carlos Mendez', '2004-001', 8.0, 7.5, 9.0);
  var alumnoDos = Alumno('Angel Fuentes', '2020-001', 5.0, 5.5, 5.9);
  var alumnoTres = Alumno('Iker Blade', '2025-001', 9.5, 8.0, 7.9);
  var alumnoCuatro = Alumno('Mateo Charles', '2026-001', 8.8, 9.8, 9.6);

  print(alumnoUno.calcularPromedio());
  print(alumnoUno.aprobo());
  print(alumnoUno.obtenerEstatus());
  alumnoUno.mostrarBoleta();

  print(alumnoDos.calcularPromedio());
  print(alumnoDos.aprobo());
  print(alumnoDos.obtenerEstatus());
  alumnoDos.mostrarBoleta();

  print(alumnoTres.calcularPromedio());
  print(alumnoTres.aprobo());
  print(alumnoTres.obtenerEstatus());
  alumnoTres.mostrarBoleta();

  print(alumnoCuatro.calcularPromedio());
  print(alumnoCuatro.aprobo());
  print(alumnoCuatro.obtenerEstatus());
  alumnoCuatro.mostrarBoleta();
}
