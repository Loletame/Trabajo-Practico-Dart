import 'dart:io';

class Persona {
  String nombre;
  int edad;

  // Constructor que inicializa las propiedades
  Persona(this.nombre, this.edad);

  // Método para mostrar los datos de la persona
  void mostrarDatos() {
    print('Nombre: $nombre');
    print('Edad: $edad años');
  }
}

// Ejemplo de uso:
void main() {
  print('Ingrese el nombre de la persona');
  String nombre = stdin.readLineSync()!;
  print('ingrese la edad de la persona');
  String? edad = stdin.readLineSync();
  int edadParse = int.parse('$edad');

  Persona persona1 = Persona('$nombre', edadParse);
  persona1.mostrarDatos();
}
