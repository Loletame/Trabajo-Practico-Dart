import 'dart:io';

class CuentaBancaria {
  String titular;
  double saldo;

  CuentaBancaria(this.titular, this.saldo);
  //mostrar datos cuenta
  void mostrarDatos() {
    print('Nombre Titular: $titular');
    print('Saldo: \$$saldo');
  }

  //Para deposito
  void depositar() {
    print('Ingrese cuanto quiere depositar');
    String? monto = stdin.readLineSync();
    double montoParse = double.parse('$monto');
    saldo += montoParse;
    print('\$$monto depositado exitosamente. Su saldo es de \$$saldo');
  }

  //para retiro
  void retirar() {
    print('Ingrese cuanto quiere retirar');
    String? retiro = stdin.readLineSync();
    double retiroParse = double.parse('$retiro');

    if (retiroParse > saldo) {
      print('Fondos insuficientes. Tu saldo es de \$$saldo');
    } else {
      saldo -= retiroParse;
      print('\$$retiro retirados con exito. Su saldo actual es de \$$saldo');
    }
  }
}
//Lista

void main() {
  CuentaBancaria cuenta1 = CuentaBancaria('Lorenzo', 100000);
  bool continuar = true;
  // List<String> operaciones = [];

  while (continuar) {
    menu();
    print('Selecciona una opcion:');
    int opcion = int.parse(stdin.readLineSync()!);

    switch (opcion) {
      case 1:
        cuenta1.mostrarDatos();
        break;
      case 2:
        cuenta1.depositar();
        break;
      case 3:
        cuenta1.retirar();
        break;
      case 4:
        continuar = false;
        print('Adios!');
        break;
      default:
        print('Opcion invalida. noseasbolú');
    }
  }
}

void menu() {
  print('\nOPERACIONES');
  print('1. Mostrar Saldo');
  print('2. Depositar');
  print('3. Retirar');
  print('4. Salir');
}
