class EstadoJuego {
  PImage fondoEstadoJuego;

  Boton reiniciar;
  Boton menu;

  String texto;

  EstadoJuego(String _texto) {
    fondoEstadoJuego = loadImage("estado.jpg");
    reiniciar = new Boton(width/2, 350, "REINICIAR");
    menu = new Boton(width/2, 400, "MENU");
    texto = _texto;
  }

  void mostrar() {
    image(fondoEstadoJuego, 0, 0, width, height);
    reiniciar.mostrar();
    menu.mostrar();
    mostrarTexto();
  }

  void mostrarTexto() {
    rectMode(CORNER);
    fill(221, 236, 251);
    textAlign(CENTER);
    textSize(40);
    text(texto, width/2, 50);
  }
}
