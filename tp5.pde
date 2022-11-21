Arkanoid arkanoid;
import processing.sound.*;

SoundFile musicaPrincipal;
//SoundFile musicaJuego;

void setup() {
  size(500, 500);
  arkanoid = new Arkanoid();
  
  //musicaJuego = new SoundFile(this,"win.aiff");
  
  musicaPrincipal = new SoundFile(this,"juego.aiff");
  musicaPrincipal.loop();
}

void draw() {
  arkanoid.mostrar();
}

void mouseClicked(){
  arkanoid.eventosBotones();
};
