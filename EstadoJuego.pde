class PantallaEstadoJuego {
  PImage fondoEstadoJuego;

  Boton botonReiniciar;
  Boton botonMenu;

  String texto;
  int pantalla;

  PantallaEstadoJuego(String _texto, int _pantalla) {
    fondoEstadoJuego = loadImage("estado.jpg");
    botonReiniciar = new Boton(width/2, 350, "REINICIAR");
    botonMenu = new Boton(width/2, 400, "MENU");
    texto = _texto;
    pantalla = _pantalla;
  }

  void mostrar() {
    image(fondoEstadoJuego, 0, 0, width, height);
    botonReiniciar.mostrar();
    botonMenu.mostrar();
    mostrarTexto();
  }

  void mostrarTexto() {
    rectMode(CORNER);
    fill(221, 236, 251);
    textAlign(CENTER);
    textSize(40);
    text(texto, width/2, 50);
  }

  int mousePresionado() {
    if (botonReiniciar.hiceClick()) {
      return 1;
    }
    if (botonMenu.hiceClick()) {
      return 0;
    }
    return pantalla;
  }
}
