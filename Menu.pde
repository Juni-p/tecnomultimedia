class PantallaMenu {
  Boton botonJugar;
  Boton botonCreditos;
  Boton botonInstrucciones;

  PImage fondoMenu;

  PantallaMenu() {
    fondoMenu = loadImage("menu.jpg");
    botonJugar = new Boton(width/2, 350, "JUGAR");
    botonInstrucciones = new Boton(width/2, 400, "INTRUCCIONES");
    botonCreditos = new Boton(width/2, 450, "CREDITOS");
  }

  void mostrar() {
    image(fondoMenu, 0, 0, width, height);
    botonesMenu();
  }

  void botonesMenu() {
    botonJugar.mostrar();
    botonInstrucciones.mostrar();
    botonCreditos.mostrar();
  }

  int mousePresionado() {
    if (botonJugar.hiceClick()) {
      return 1;
    }
    if (botonInstrucciones.hiceClick()) {
      return 2;
    }
    if (botonCreditos.hiceClick()) {
      return 3;
    }
    return 0;
  }
}
