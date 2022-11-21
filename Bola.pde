class Bola {
  PImage bolaImg;

  boolean perder;

  int posX, posY, velocidadX, velocidadY, reinicioX, reinicioY;

  Bola(int posBolaX, int posBolaY) {
    bolaImg = loadImage("bola.png");

    reinicioX = posBolaX;
    reinicioY = posBolaY;
    posX = posBolaX;
    posY = posBolaY;
    velocidadX = 4;
    velocidadY = 4;
    perder = false;
  };

  void mostrar() {
    image(bolaImg, posX, posY, 15, 15);

    mover();
  }

  void mover() {
    posX += velocidadX;
    posY += velocidadY;

    if (posX > 485 || posX < 15 ) {
      velocidadX *= -1;
    }

    if (posY > 495 || posY < 10) {
      if (posY < 460) {
        velocidadY *= -1;
      } else {
        reiniciar();
        perder = true;
      }
    }
  }

  void invertir() {
    velocidadY *= -1;
  }

  void reiniciar() {
    posX = reinicioX;
    posY = reinicioY;
  }

  int obtenerX() {
    return posX;
  }
  int obtenerY() {
    return posY;
  }
}
