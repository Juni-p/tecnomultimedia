class Restaurante {
  Mesa mesa;
  PImage fondoImg;

  Restaurante() {
    fondoImg = loadImage("fondo.png");
    //Inicializo mesa
    mesa = new Mesa(310,350,300,300);
  }

  void mostrar() {
    image(fondoImg, 0, 0, width, height);
    mesa.mostrar();
  }
}
