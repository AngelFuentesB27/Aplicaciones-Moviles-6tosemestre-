class Producto {
  String nombre;
  String categoria;
  double precio;
  int cantidad;

  Producto(this.nombre, this.categoria, this.precio, this.cantidad);
  void mostrarInfo() {
    print('''\n--- Producto---
    Nombre:$nombre
    Categoria: $categoria
    Precio: $precio
    Cantidad: $cantidad 
    ''');
  }

  double calcularTotal() {
    return precio * cantidad;
  }

  void aplicarDescuento(double porcentaje) {
    precio = precio * (1 - porcentaje / 100);
  }

  bool hayStock() {
    return cantidad > 0;
  }
}

void main(List<String> args) {
  var productoUno = Producto('Cuaderno', 'Papeleria', 35.50, 100);
  productoUno.mostrarInfo();
  print(productoUno.calcularTotal());
  print(productoUno.hayStock());
  productoUno.aplicarDescuento(10.0);
  print(productoUno.precio);
  var productoDos = Producto('Lapiz', 'Papeleria', 10.50, 200);
  productoDos.mostrarInfo();
  print(productoDos.calcularTotal());
  productoDos.aplicarDescuento(20.0);
  print(productoDos.precio);
  print(productoDos.hayStock());
  var productoTres = Producto('Pegamento', 'Papeleria', 15.0, 0);
  productoTres.mostrarInfo();
  print(productoTres.calcularTotal());
  productoTres.aplicarDescuento(5.0);
  print(productoTres.precio);
  print(productoTres.hayStock());
}
