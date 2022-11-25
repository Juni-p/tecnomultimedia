class Arkanoid {
  Juego juegoArkanoid;

  PantallaMenu pantallaMenu;
  PantallaInstruccion pantallaInstruccion;
  PantallaCredito pantallaCredito;
  PantallaEstadoJuego pantallaPerder;
  PantallaEstadoJuego pantallaGanar;

  int pantalla = 0;
  int siguientePantalla;

  Arkanoid() {
    juegoArkanoid = new Juego();

    pantallaMenu = new PantallaMenu();
    pantallaInstruccion = new PantallaInstruccion();
    pantallaCredito = new PantallaCredito();
    pantallaPerder = new PantallaEstadoJuego("PERDISTE", 4);
    pantallaGanar = new PantallaEstadoJuego("GANASTE", 5);
  }

  void mostrar() {
    eventosEstadoJuego();

    if (pantalla == 0) {
      pantallaMenu.mostrar();
    } else if (pantalla == 1) {
      juegoArkanoid.mostrar();
    } else if (pantalla == 2) {
      pantallaInstruccion.mostrar();
    } else if (pantalla == 3) {
      pantallaCredito.mostrar();
    } else if (pantalla == 4) {
      pantallaPerder.mostrar();
    } else if (pantalla == 5) {
      pantallaGanar.mostrar();
    }
  }

  void eventosEstadoJuego() {
    if (pantalla == 1 && juegoArkanoid.perder()) {
      pantalla = 4;
    } else if (pantalla == 1 && juegoArkanoid.ganar()) {
      pantalla = 5;
    }
  }

  void eventosBotones() {
    if (pantalla == 0) {
      siguientePantalla = pantallaMenu.mousePresionado();
      if (siguientePantalla != 0) {
        pantalla = siguientePantalla;
      }
    } else if (pantalla == 2) {
      siguientePantalla = pantallaInstruccion.mousePresionado();
      if (siguientePantalla != 2) {
        pantalla = siguientePantalla;
      }
    } else if (pantalla == 3) {
      siguientePantalla = pantallaCredito.mousePresionado();
      if (siguientePantalla != 3) {
        pantalla = siguientePantalla;
      }
    } else if (pantalla == 4) {
      siguientePantalla = pantallaPerder.mousePresionado();
      if (siguientePantalla != 4) {
        pantalla = siguientePantalla;
      }
    } else if (pantalla == 5) {
      siguientePantalla = pantallaGanar.mousePresionado();
      if (siguientePantalla != 5) {
        pantalla = siguientePantalla;
      }
    }
  }
}
