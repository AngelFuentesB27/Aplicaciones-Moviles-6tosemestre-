class CuentaBancaria {
  String titular;
  int numeroCuenta;
  double saldo;

  CuentaBancaria(this.titular, this.numeroCuenta, this.saldo);

  void depositar(double monto) {
    saldo += monto;
  }

  void retirar(double monto) {
    if (monto > saldo) {
      print("Saldo insuficiente");
    } else {
      saldo -= monto;
    }
  }

  void mostrarInfo() {
    print('Titular: $titular | Cuenta: $numeroCuenta | Saldo: \$$saldo');
  }
}

class CuentaAhorro extends CuentaBancaria {
  double tasaInteres;

  CuentaAhorro(
    super.titular,
    super.numeroCuenta,
    super.saldo,
    this.tasaInteres,
  );

  void aplicarInteresMensual() {
    double intereses = tasaInteres * saldo;
    saldo += intereses;
    print('Interes mensual ganado: $intereses');
  }
}

class CuentaCorriente extends CuentaBancaria {
  double limiteCredito;

  CuentaCorriente(
    super.titular,
    super.numeroCuenta,
    super.saldo,
    this.limiteCredito,
  );

  @override
  void retirar(double monto) {
    if (saldo - monto >= -limiteCredito) {
      saldo -= monto;
    } else {
      print('Limite de credito excedido');
    }
  }
}

void main(List<String> args) {
  var cuentaUno = CuentaAhorro('Angel Fuentes', 777777, 1000.0, 0.05);
  cuentaUno.depositar(50.0);
  cuentaUno.depositar(10.0);
  cuentaUno.depositar(50.0);
  cuentaUno.retirar(500.0);
  cuentaUno.retirar(1500.0);
  cuentaUno.aplicarInteresMensual();

  var cuentaDos = CuentaCorriente('Iker Balderrama', 666666, 500.0, 1000.0);
  cuentaDos.retirar(1200.0);
  cuentaDos.retirar(500.0);

  cuentaUno.mostrarInfo();
  cuentaDos.mostrarInfo();
}
