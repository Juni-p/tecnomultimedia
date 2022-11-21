class Credito {
  PImage fondoCredito;

  String[] creditos;

  Boton volver;

  Credito() {
    fondoCredito = loadImage("credito.jpg");
    creditos = loadStrings("creditos.txt");
    volver = new Boton(width/2, 300, "VOLVER");
  }

  void mostrar() {
    image(fondoCredito, 0, 0, width, height);
    volver.mostrar();
    mostrarTexto();
  };

  void mostrarTexto() {
    rectMode(CORNER);
    for (int i = 0; i < creditos.length; i++) {
      fill(221, 236, 251);
      textAlign(CENTER);
      textSize(20);
      text(creditos[i], 0, 50 + 50 * i, 500, 250);
    }
  }
}
