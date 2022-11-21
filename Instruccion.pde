class Instruccion {
  PImage fondoInstruccion;

  String[] instrucciones;

  Barra barra;
  Boton volver;

  Instruccion() {
    fondoInstruccion = loadImage("instruccion.jpg");
    instrucciones = loadStrings("instrucciones.txt");
    barra = new Barra(width/2, 180);
    volver = new Boton(width/2, 400, "VOLVER");
  }

  void mostrar() {
    image(fondoInstruccion, 0, 0, width, height);
    volver.mostrar();
    mostrarTexto();
    barra.mostrar();
  }

  void mostrarTexto() {
    rectMode(CORNER);
    for (int i = 0; i < instrucciones.length; i++) {
      fill(221, 236, 251);
      textAlign(CENTER);
      textSize(20);
      text(instrucciones[i], 0, 50 + 200 * i, 500, 400);
    }
  }
}
