import 'dart:math';

List<int> numeros = [3, 6, 9, 12, 15];

void main() {
  print('Los numeros son:');
  //recorre la list y los imprime;
  for (int numero in numeros) {
    print(numero);
  }
  //Calcula la suma de todos los numeros de la lista entre si e imprime resultados.
  int suma = numeros
      .reduce((valorAnterior, valorActual) => valorAnterior + valorActual);
  print('La suma de los números es: $suma');
  //Determina el numero mas alto y el mas bajo.
  int numeroMayor = numeros.reduce(max);
  int numeroMenor = numeros.reduce(min);
  print('El número mayor es: $numeroMayor');
  print('El número menor es: $numeroMenor');

  // Números pares
  List<int> numerosPares = numeros.where((numero) => numero % 2 == 0).toList();
  print('Los números pares son: $numerosPares');

  // Dobles de los números
  List<int> numerosDobles = numeros.map((numero) => numero * 2).toList();
  print('Los números doblados son: $numerosDobles');
}
