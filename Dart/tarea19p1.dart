import 'dart:io';

void agregarProductos(Map<String, double> productos) {
  String producto = '';
  for (var i = 0; i < 6; i++) {
    print('Ingresa el nombre del producto');
    producto = stdin.readLineSync()!;
    print('Ingresa el precio del producto');
    productos[producto] = double.parse(stdin.readLineSync()!);
  }
}

void imprimirProductos(Map<String, double> productos) {
  print('Productos Disponibles');
  productos.forEach((producto, precio) {
    print('$producto:\$$precio ');
  });
}

void buscarPrecio(Map<String, double> productos) {
  print('Ingrese el nombre del producto a buscar');
  String producto = stdin.readLineSync()!;
  if (productos.containsKey(producto)) {
    print('EL producto $producto tiene precio de:\$${productos[producto]}');
  } else {
    print('El producto no existe');
  }
}

void calcular2Unidades(Map<String, double> productos) {
  double suma = 0;
  productos.forEach((producto, precio) {
    suma += precio * 2;
  });
  print('Costo total(2 unidades de c/u):\$$suma');
}

void calcularPromedio(Map<String, double> productos) {
  double suma = 0;
  productos.forEach((producto, precio) {
    suma += precio;
  });
  print('Precio promedio de productos:\$${suma / productos.length}');
}

void imprimirCaroBArato(Map<String, double> productos) {
  double precioMayor = 0.0;
  double precioMenor = 0.0;
  String productoMayor = "";
  String productoMenor = "";
  productos.forEach((producto, precio) {
    if (precioMayor == 0.0 || precioMenor == 0.0) {
      precioMayor = precio;
      precioMenor = precio;
      productoMenor = producto;
      productoMayor = producto;
    } else {
      if (precio > precioMayor) {
        precioMayor = precio;
        productoMayor = producto;
      }
      if (precio < precioMenor) {
        precioMenor = precio;
        productoMenor = producto;
      }
    }
  });
  print('Producto de mayor precio: $productoMayor=\$$precioMayor');
  print('Producto de menor precio: $productoMenor=\$$precioMenor');
}

void main(List<String> args) {
  Map<String, double> productos = {};
  agregarProductos(productos);
  imprimirProductos(productos);
  buscarPrecio(productos);
  calcular2Unidades(productos);
  calcularPromedio(productos);
  imprimirCaroBArato(productos);
}
