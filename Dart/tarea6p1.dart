void main() {
  int suma = 0;
  for (int i = 1; i <= 10; i++) {
    suma += i;
  }
  print('Suma del 1 al 10: $suma');
  suma = 0;
  for (int i = 1; i <= 100; i++) {
    suma += i;
  }
  print('Suma 1 al 100: $suma');
  suma = 0;
  for (int i = 1; i <= 20; i++) {
    if (i % 2 == 0) {
      suma += i;
    }
  }
  print('Suma de numeros pares del 1 al 20: $suma ');
}
