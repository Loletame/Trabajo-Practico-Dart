import 'dart:io';

void main() {
  print('Ingrese un número entero positivo: ');
  String? numStr = stdin.readLineSync();
  int num = int.parse(numStr!);

  int suma = 0;
  //Bucle for para continuar la suma mientras que el integer i sea menor o igual a num
  for (int i = 1; i <= num; i++) {
    suma += i;
  }

  print('La suma de los números desde 1 hasta $num es: $suma');
}