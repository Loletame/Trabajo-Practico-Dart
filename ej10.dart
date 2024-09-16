import 'dart:io';

class Contacto {
  String nombre;
  String numero;

  Contacto(this.nombre, this.numero);

  @override
  String toString() {
    return 'Contacto: $nombre, Llamar a $numero';
  }
}

//Lista de contactos
List<Contacto> contactos = [];

void menu() {
  print('\nCONTACTOS');
  print('1. Añadir contacto');
  print('2. Eliminar contacto');
  print('3. Mostrar contactos');
  print('4. Buscar contactos');
  print('5. Salir');
}

//Funciones
void agregarContactos() {
  print('Ingrese nombre del contacto');
  String nombre = stdin.readLineSync()!;

  print('Ingrese numero del contacto');
  String numero = stdin.readLineSync()!;

  Contacto contacto = Contacto('$nombre', '$numero');
  contactos.add(contacto);
}

void eliminarContacto() {
  if (contactos.isEmpty) {
    print('No hay contactos');
    return;
  }
  mostrarContactos();
  print('Selecciona el contacto que desea eliminar:');
  String? indice = stdin.readLineSync();
  int indiceParse = int.parse('$indice');

  if (indiceParse > 0 && indiceParse <= contactos.length) {
    print('Contacto eliminado: ${contactos[indiceParse - 1]}');
    contactos.removeAt(indiceParse - 1);
  } else {
    print('No existe el contacto');
  }
}

void mostrarContactos() {
  if (contactos.isEmpty) {
    print('No hay contactos.');
  } else {
    print('CONTACTOS');

    // Usar map para transformar la lista de contactos a una lista de cadenas formateadas
    contactos.asMap().forEach((index, contacto) {
      print('${index + 1}. ${contacto.toString()}');
    });
  }
}

void buscarContactos() {
  print('Cual contacto esta buscando?');
  String nombreOk = stdin.readLineSync()!;

  try {
    Contacto contactoOk = contactos.firstWhere(
        (contacto) => contacto.nombre.toLowerCase() == nombreOk.toLowerCase());

    print('✅ ${contactoOk.toString()}✅');
  } catch (e) {
    print('no se encontro el contacto "$nombreOk"');
  }
}

void main() {
  bool continuar = true;

//Mostramos el menu hasta que el usuario quiera salir
  while (continuar) {
    menu();
    print('Selecciona una opcion:');
    String? opcion = stdin.readLineSync();
    int opcionParse = int.parse('$opcion');

    switch (opcionParse) {
      case 1:
        agregarContactos();
        break;
      case 2:
        eliminarContacto();
        break;
      case 3:
        mostrarContactos();
        break;
      case 4:
        buscarContactos();
        break;
      case 5:
        continuar = false;
        print('Adios!');
        break;
      default:
        print('Opcion invalida.');
    }
  }
}
