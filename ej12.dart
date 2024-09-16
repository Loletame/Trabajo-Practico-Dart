class Estudiante {
  String nombre;
  int edad;
  List<int> calificaciones;

  Estudiante(this.nombre, this.edad, this.calificaciones);

  double promedioCalificaciones() {
    if (calificaciones.isEmpty) {
      return 0.0; // Manejar el caso donde no hay calificaciones
    }
    return calificaciones.reduce((a, b) => a + b) / calificaciones.length;
  }
}

//Filtrar estudiantes con promedio mayor a 6
List<String> promediosOk(List<Estudiante> estudiantes) {
  return estudiantes
      .where((estudiante) => estudiante.promedioCalificaciones() > 6)
      .map((estudiante) => estudiante.nombre)
      .toList();
}

void main() {
  List<Estudiante> estudiantes = [
    Estudiante('Lolo', 24, [7, 6, 9]),
    Estudiante('Die', 27, [7, 9, 8]),
    Estudiante('Mica', 22, [6, 7, 9]),
    Estudiante('Fede', 22, [1, 2, 10]),
    Estudiante('Agus', 21, [5, 6, 7]),
  ];
  //Estudiantes con promedios mayot a 6
  List<String> aprobados = promediosOk(estudiantes);
  print('Estudiantes aprobados:');
  aprobados.forEach(print);
}
