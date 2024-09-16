import 'dart:io';

void main() {
  print('Ingrese un número entero: ');
  String? numStr = stdin.readLineSync();
  int num = int.parse(numStr!);
  //calculo para ver si es par o impar
  if (num % 2 == 0) {
    print('El número $num es par.');
  } else {
    print('El número $num es impar.');
  }
}
