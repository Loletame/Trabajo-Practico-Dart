import 'dart:io';

bool esPalindromo(String cadena) {
  // Eliminar espacios en blanco y convertir a minúsculas para una comparación más precisa
  String cadenaLimpia = cadena.replaceAll(' ', '').toLowerCase();
  
  // Revertir la cadena limpia
  String cadenaRevertida = cadenaLimpia.split('').reversed.join();
  
  // Comparar la cadena original con la invertida
  return cadenaLimpia == cadenaRevertida;
}

void main() {
  print('Ingrese una cadena para verificar si es un palíndromo: ');
  String? cadena = stdin.readLineSync();

  if (cadena != null) {
    bool resultado = esPalindromo(cadena);
    if (resultado) {   
      print('La cadena "$cadena" es un palíndromo.');
    } else {
      print('La cadena "$cadena" no es un palíndromo.');
    }
  } else {
    print('No se ingresó ninguna cadena.');
  }
}