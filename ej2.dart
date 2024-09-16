import 'dart:io';

void main() {
  // Pedimos al usuario que ingrese los dos números
  print('Ingrese el primer número : ');
  String? num1Str = stdin.readLineSync();
  int num1 = int.parse(num1Str!);

  print('Ingrese el segundo número : ');
  String? num2Str = stdin.readLineSync();
  int num2 = int.parse(num2Str!);

  // Realizado de  operaciones
  int suma = num1 + num2;
  int resta = num1 - num2;
  int multiplicacion = num1 * num2;
  double division = num1 / num2; // División con double (por número decimal)

  // Imprimimos los resultados
  print('La suma es =  $suma');
  print('La resta es = $resta');
  print('La multiplicación es = $multiplicacion');
  print('La división es = $division');
}