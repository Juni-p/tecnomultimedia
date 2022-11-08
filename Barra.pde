class Barra {
  int posX, posY;
  PImage plataforma;

  Barra() {
    posX = 250;
    posY = 450;
    plataforma = loadImage("plataforma.png");
  }

  void mostrar() {
    image(plataforma, posX, posY, 90, 25);
  }

  void mover() {
    if (keyPressed) {
      if (keyCode == LEFT) {
        if (posX > 5) {
          posX -= 8;
        }
      }
      if (keyCode == RIGHT) {
        if (posX < 410) {
          posX += 8;
        }
      }
    }
  }

  boolean colision(int bolaPosX, int bolaPosY) {
    boolean respuesta = false;
    if ((bolaPosX + 15) < posX || bolaPosX > (posX + 90)) {
      respuesta = false;
    } else if ((bolaPosY + 15) < posY || bolaPosY > posY) {
      respuesta = false;
    } else {
      respuesta = true;
    }
    return respuesta;
  }
}
