int? busquedaBinaria(List<int> lista, int valor, int inicio, int fin) {
  print("Buscando $valor en la lista: $lista, desde $inicio hasta $fin");

  while (inicio <= fin) {
    int medio = (inicio + fin) ~/ 2;
    print("Medio: $medio, valor en medio: ${lista[medio]}");

    if (lista[medio] == valor) {
      return medio;
    } else if (lista[medio] < valor) {
      inicio = medio + 1; // Busca en la mitad derecha
    } else {
      fin = medio - 1; // Busca en la mitad izquierda
    }
  }

  return null; // No se encontró el valor
}

void main() {
  //Lista ordenada
  List<int> lista = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  //Busqueda binaria
  //ej busqueda mitad izq
  int valorBuscado = 1;

  //ej busqueda mitad der
  // int valorBuscado = 9;

  //ej busqueda numero no disponible
  // int valorBuscado = 12;

  int? resultado = busquedaBinaria(lista, valorBuscado, 0, lista.length - 1);

  if (resultado != null) {
    print('Valor $valorBuscado encontrado en el indice: $resultado');
  } else {
    print('Valor $valorBuscado no encontrado');
  }
}
