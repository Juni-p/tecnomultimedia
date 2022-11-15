class Arkanoid {
  PImage fondoArkanoid;

  int cantidadBloques = 8;

  Bola bola;
  Barra barra;
  Bloque[][] bloques = new Bloque[cantidadBloques][cantidadBloques];

  Arkanoid() {
    fondoArkanoid = loadImage("fondo.jpg");

    generarBloques();
    bola = new Bola(width/2, height/2);
    barra = new Barra();
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
          }
        }
      }
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
        }
      }
    }
  }
}
