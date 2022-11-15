class Bola {
  PImage bolaImg;

  int posX, posY, velocidadX, velocidadY, reinicioX, reinicioY;

  Bola(int posBolaX, int posBolaY) {
    bolaImg = loadImage("bola.png");

    reinicioX = posBolaX;
    reinicioY = posBolaY;
    posX = posBolaX;
    posY = posBolaY;
    velocidadX = 3;
    velocidadY = 3;
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
        reinicio();
      }
    }
  }

  void reinicio() {
    posX = reinicioX;
    posY = reinicioY;
  }

  void invertir() {
    velocidadY *= -1;
  }

  int obtenerX() {
    return posX;
  }
  int obtenerY() {
    return posY;
  }
}
