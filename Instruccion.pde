class PantallaInstruccion {
  PImage fondoInstruccion;

  String[] textoInstrucciones;

  Barra barra;
  Boton botonVolver;

  PantallaInstruccion() {
    fondoInstruccion = loadImage("instruccion.jpg");
    textoInstrucciones = loadStrings("instrucciones.txt");
    barra = new Barra(width/2, 180);
    botonVolver = new Boton(width/2, 400, "VOLVER");
  }

  void mostrar() {
    image(fondoInstruccion, 0, 0, width, height);
    botonVolver.mostrar();
    mostrarTexto();
    barra.mostrar();
  }

  void mostrarTexto() {
    rectMode(CORNER);
    for (int i = 0; i < textoInstrucciones.length; i++) {
      fill(221, 236, 251);
      textAlign(CENTER);
      textSize(20);
      text(textoInstrucciones[i], 0, 50 + 200 * i, 500, 400);
    }
  }

  int mousePresionado() {
    if (botonVolver.hiceClick()) {
      return 0;
    }
    return 2;
  }
}
