class Juego {
  PImage fondoArkanoid;

  int contadorBloquesVisible,contadorBloquesColisionados;
  boolean ganar;

  int cantidadBloques = 1;

  Bola bola;
  Barra barra;
  Bloque[][] bloques = new Bloque[cantidadBloques][cantidadBloques];

  Juego() {
    fondoArkanoid = loadImage("fondo.jpg");
    
    ganar = false;

    contadorBloquesVisible = 0;
    contadorBloquesColisionados = 0;

    generarBloques();
    bola = new Bola(width/2, height/2);
    barra = new Barra(250, 450);
  }

  void mostrar() {
    image(fondoArkanoid, 0, 0, width, height);

    bola.mostrar();
    barra.mostrar();

    for (int i = 0; i < cantidadBloques; i++) {
      for (int j = 0; j < cantidadBloques; j++) {
        if (bloques[i][j] != null) {
          bloques[i][j].mostrar();
          if (bloques[i][j].colision(bola.obtenerX(), bola.obtenerY())) {
            bola.invertir();
            bloques[i][j] = null;
            contadorBloquesColisionados++;
          }
        }
      }
    }

    if (contadorBloquesVisible - contadorBloquesColisionados == 0) {
      ganar = true;
    }

    if (barra.colision(bola.obtenerX(), bola.obtenerY())) {
      bola.invertir();
    }
  }

  void generarBloques() {
    for (int i = 0; i < cantidadBloques; i++) {
      for (int j = 0; j < cantidadBloques; j++) {
        if (random(0, 100) < 40) {
          int posX = floor(map(i, 0, cantidadBloques, 0, width));
          int posY = floor(map(j, 0, cantidadBloques, 0, height/2));

          bloques[i][j] = new Bloque(posX, posY);
          contadorBloquesVisible++;
        }
      }
    }
  }
}
