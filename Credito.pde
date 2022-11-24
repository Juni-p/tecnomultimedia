class PantallaCredito {
  PImage fondoCredito;

  String[] textoCreditos;

  Boton botonVolver;

  PantallaCredito() {
    fondoCredito = loadImage("credito.jpg");
    textoCreditos = loadStrings("creditos.txt");
    botonVolver = new Boton(width/2, 300, "VOLVER");
  }

  void mostrar() {
    image(fondoCredito, 0, 0, width, height);
    botonVolver.mostrar();
    mostrarTexto();
  };

  void mostrarTexto() {
    rectMode(CORNER);
    for (int i = 0; i < textoCreditos.length; i++) {
      fill(221, 236, 251);
      textAlign(CENTER);
      textSize(20);
      text(textoCreditos[i], 0, 50 + 50 * i, 500, 250);
    }
  }

  int mousePresionado() {
    if (botonVolver.hiceClick()) {
      return 0;
    }
    return 3;
  }
}
