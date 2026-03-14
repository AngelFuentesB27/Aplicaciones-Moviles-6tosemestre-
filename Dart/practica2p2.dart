class Producto {
  String nombre;
  double precio;
  int cantidad;

  Producto(this.nombre, this.precio, this.cantidad);

  double calcularTotal() {
    return precio * cantidad;
  }
}

void main(List<String> args) {
  var productoUno = Producto('toalla', 50.0, 2);
  var productoDos = Producto('papel', 45.0, 1);

  print('El Precio total es : \$${productoUno.calcularTotal()}');
  print('El Precio total es: \$${productoDos.calcularTotal()}');
}
