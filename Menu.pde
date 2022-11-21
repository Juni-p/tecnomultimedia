class Menu {
  Boton jugar;
  Boton creditos;
  Boton instrucciones;
  
  PImage fondoMenu;

  Menu() {
    fondoMenu = loadImage("menu.jpg");
    jugar = new Boton(width/2,350,"JUGAR");
    instrucciones = new Boton(width/2,400,"INTRUCCIONES");
    creditos = new Boton(width/2,450,"CREDITOS");
  }

  void mostrar() {
    image(fondoMenu, 0, 0, width, height);
    botonesMenu();
  }
  
  void botonesMenu(){
    jugar.mostrar();
    instrucciones.mostrar();
    creditos.mostrar();
  }
}
