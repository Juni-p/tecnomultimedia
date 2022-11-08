class Arkanoid {

  Bola bola;
  Barra barra;
  Bloque bloque;

  Arkanoid() {
    bola = new Bola(250, 250);
    barra = new Barra();
    bloque = new Bloque(10, 150);
  }

  void mostrar() {
    background(50);
    
    bola.mostrar();
    bola.mover();
    barra.mostrar();
    barra.mover();
    bloque.mostrar();
    
    if (barra.colision(bola.obtenerX(), bola.obtenerY())) {
      bola.invertir();
    }
  }
}
