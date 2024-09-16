import 'dart:io';

//Lista
List<String> tareas = [];

//menu

void menu() {
  print('\nTAREAS');
  print('1. Añadir tarea');
  print('2. Finalizar Tarea');
  print('3. Tareas pendientes');
  print('4. Salir');
}

void agregarTarea() {
  print('Agregar Tarea: ');
  String tarea = stdin.readLineSync()!;
  tareas.add(tarea);
}

void mostrarTareas() {
  if (tareas.isEmpty) {
    print('no quedan tareas pendientes');
  } else {
    print('TAREAS PENDIENTES');
    print(tareas);
    for (int i = 0; i < tareas.length; i++) {
      print('${i + 1}. ${tareas[i]}');
    }
  }
}

void finalizarTarea() {
  if (tareas.isEmpty) {
    print('No hay tareas para verificar');
    return;
  } else {
    mostrarTareas();
    print('Selecciona el numero de la tarea completada:');
    int indice = int.parse(stdin.readLineSync()!);

    if (indice > 0 && indice <= tareas.length) {
      print('Tarea completada: ${tareas[indice - 1]}');
      tareas.removeAt(indice - 1);
    } else {
      print('Numero de tarea inexistente');
    }
  }
}

void main() {
  bool continuar = true;

  while (continuar) {
    menu();
    print('Seleccione una opcion');
    int opcion = int.parse(stdin.readLineSync()!);

    switch (opcion) {
      case 1:
        agregarTarea();
        break;
      case 2:
        finalizarTarea();
        break;
      case 3:
        mostrarTareas();
        break;
      case 4:
        continuar = false;
        print('Adios!');
        break;
      default:
        print('Opcion invalida.');
    }
  }
}
