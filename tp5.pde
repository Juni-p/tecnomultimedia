Arkanoid arkanoid;
import processing.sound.*;

SoundFile musicaPrincipal;

void setup() {
  size(500, 500);
  arkanoid = new Arkanoid();

  musicaPrincipal = new SoundFile(this, "juego.aiff");
  musicaPrincipal.loop();
}

void draw() {
  arkanoid.mostrar();
}

void mouseClicked() {
  arkanoid.eventosBotones();
};
