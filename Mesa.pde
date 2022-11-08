class Mesa {
  Plato plato;
  int ancho, alto;
  float posX, posY;
  PImage mesaImg;

  Mesa(float _posX, float _posY, int _ancho, int _alto) {
    posX = _posX;
    posY = _posY;
    ancho = _ancho;
    alto = _alto;
    mesaImg = loadImage("mesa.png");
    //Inicializo plato
    plato = new Plato(width/2,height/2,100,100);
  }

  void mostrar() {
    image(mesaImg, posX, posY, ancho, alto);
    plato.mostrar();
  }
}
