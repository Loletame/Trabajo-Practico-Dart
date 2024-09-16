import 'dart:io';
import 'dart:math';

void main() {
  
  print('Ingrese el radio del círculo: ');
  String? radioStr = stdin.readLineSync();
  double radio = double.parse(radioStr!);

  double area = calcularAreaCirculo(radio);

  print('El área del círculo es: $area metros^2');
}

double calcularAreaCirculo(double radio) {
  return pi * radio * radio;
}