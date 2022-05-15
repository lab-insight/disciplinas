void main() {
  Carro c1 = Carro("fiat", "toro", 70.0, 4.0);

  double vel = c1.acelerar(20);
  print("VELOCIDADE ${vel}");

  double velReduzida = c1.frear(10);
  print("VELOCIDADE: ${velReduzida}");

  double velocidade = c1.parar();
  print("VELOCIDADE ${velocidade}");
}

class Carro {
  String marca;
  String modelo;
  double velocidade;
  double potencia;

  Carro(this.marca, this.modelo, this.velocidade, this.potencia);

  /* @comments: 
  *  - A velocidade não foi alterada;
  *  - Retornar é desnecessário;
  */
  double acelerar(double tempAcel) {
    double vlrVel = velocidade + (potencia * tempAcel);
    return vlrVel;
  }

  /* @comments: 
  *  - A velocidade não foi alterada;
  *  - Retornar é desnecessário;
  */
  double frear(tempFren) {
    double vlrVel = velocidade - (potencia * tempFren);
    return vlrVel;
  }

  /* @comments: 
  *  - A velocidade não foi alterada;
  *  - Não está errado, mas retornar é desnecessário;
  */
  double parar() {
    return 0.0;
  }
}
