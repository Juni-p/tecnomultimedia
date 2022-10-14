class Plato {
  Ingrediente pan;
  Ingrediente carne;
  Ingrediente lechuga;
  Ingrediente tomate;
  int ancho, alto;
  float posX, posY;
  PImage platoImg;

  Plato(float _posX, float _posY, int _ancho, int _alto) {
    posX = _posX;
    posY = _posY;
    ancho = _ancho;
    alto = _alto;
    platoImg = loadImage("plato.png");
    pan = new Ingrediente(390,300,120,120,"pan");
    carne = new Ingrediente(410,320,50,50,"carne");
    lechuga = new Ingrediente(420,320,30,30,"lechuga");
    tomate = new Ingrediente(415,310,40,40,"tomate");
  }

  void mostrar() {
    image(platoImg, posX, posY, ancho, alto);
    pan.mostrar();
    carne.mostrar();
    lechuga.mostrar();
    tomate.mostrar();
  }
}
