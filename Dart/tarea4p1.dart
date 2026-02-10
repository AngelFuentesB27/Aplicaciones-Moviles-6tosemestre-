void main() {
  /*
        Dificultad: ⭐⭐
        Tiempo estimado: 15 minutos
        Descripción: Practica los operadores de asignación compuesta.
        Requisitos: - Comienza con numero = 100 - Imprime el valor inicial - Usa += para sumar 25 - Imprime el valor - Usa -= para restar 15 - Imprime el valor - Usa *= para multiplicar por 2 - Imprime el valor - Usa ~/= para hacer división entera entre 5 - Imprime el valor final
        Salida esperada:
        ========== OPERADORES DE ASIGNACIÓN ==========

        Valor inicial: 100
        Después de += 25: 125
        Después de -= 15: 110
        Después de *= 2: 220
        Después de ~/= 5: 44
    */
  int numero = 100;
  print('Valor inicial: $numero');
  numero += 25;
  print('Despues de +=25 : $numero');
  numero -= 15;
  print('Despues de -=15 : $numero');
  numero *= 2;
  print('Despues de *=2 : $numero');
  numero ~/= 5;
  print('Despues de ~/=5 : $numero');
}
