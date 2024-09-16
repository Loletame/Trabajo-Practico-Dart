int factorial(int n) {
  if (n <= 1) {
    return 1; //base
  } else {
    return n * factorial(n - 1); //Llamada recursiva
  }
}

void main() {

  
  //Pruebas de la funcion factorial
  print('Factorial de 2: ${factorial(2)}');
  print('Factorial de 3: ${factorial(3)}');
  print('Factorial de 4: ${factorial(4)}');
}
