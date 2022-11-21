class Arkanoid {
  Juego juego;

  Menu pantallaMenu;
  Instruccion pantallaInstruccion;
  Credito pantallaCredito;
  EstadoJuego pantallaPerder;
  EstadoJuego pantallaGanar;

  int pantalla = 0;

  Arkanoid() {
    juego = new Juego();

    pantallaMenu = new Menu();
    pantallaInstruccion = new Instruccion();
    pantallaCredito = new Credito();
    pantallaPerder = new EstadoJuego("PERDISTE");
    pantallaGanar = new EstadoJuego("GANASTE");
  }

  void mostrar() {
    eventosEstadoJuego();

    if (pantalla == 0) {
      pantallaMenu.mostrar();
    } else if (pantalla == 1) {
      juego.mostrar();
    } else if (pantalla == 2) {
      pantallaInstruccion.mostrar();
    } else if (pantalla == 3) {
      pantallaCredito.mostrar();
    } 
    if (pantalla == 4) {
      pantallaPerder.mostrar();
    } 
    if (pantalla == 5) {
      pantallaGanar.mostrar();
    }
  }

  void eventosEstadoJuego() {
    if (pantalla == 1 && juego.bola.perder == true) {
      pantalla = 4;
      juego.bola.perder = false;
    } else if (pantalla == 1 && juego.ganar == true) {
      pantalla = 5;
      juego.ganar = false;
    }
  }

  void eventosBotones() {
    if (pantalla == 0 && pantallaMenu.jugar.esHover()) {
      pantalla = 1;
    } else if (pantalla == 4 && pantallaPerder.reiniciar.esHover()) {
      juego.mostrar();
      pantalla = 1;
    } else if (pantalla == 4 && pantallaPerder.menu.esHover()) {
      pantalla = 0;
    } else if (pantalla == 5 && pantallaGanar.reiniciar.esHover()) {
      juego.mostrar();
      pantalla = 1;
    } else if (pantalla == 5 && pantallaGanar.menu.esHover()) {
      pantalla = 0;
    } else if (pantalla == 0 && pantallaMenu.instrucciones.esHover()) {
      pantalla = 2;
    } else if (pantalla == 2 && pantallaInstruccion.volver.esHover()) {
      pantalla = 0;
    } else if (pantalla == 0 && pantallaMenu.creditos.esHover()) {
      pantalla = 3;
    } else if (pantalla == 3 && pantallaCredito.volver.esHover()) {
      pantalla = 0;
    }
  }
}
