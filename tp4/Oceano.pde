class Oceano {
  Tiburon tiburon;
  int numerosAlgas = 25;
  int numerosPeces = 5;
  Algas[] algas;
  Peces[] pezPayaso;
  Peces[] pezDorado;
  Peces[] pezComun;

  Oceano() {
    background(78, 163, 227);
    // Inicializo tiburon
    tiburon = new Tiburon(width/2, height/2, 350, 220);
    // Inicializo algas
    algas = new Algas[numerosAlgas];
    for (int i = 0; i < algas.length; i++) {
      algas[i] = new Algas(random(0, width), 520, 100, 100);
    }
    // Inicializo Peces Payasos
    pezPayaso = new Peces[numerosPeces];
    for (int i = 0; i < pezPayaso.length; i++) {
      pezPayaso[i] = new Peces(random(0, width), random(0, height), 80, 80, "pez1");
    }
    // Inicializo Peces Dorados
    pezDorado = new Peces[numerosPeces];
    for (int i = 0; i < pezDorado.length; i++) {
      pezDorado[i] = new Peces(random(0, width), random(0, height), 100, 75, "pez3");
    }
    // Inicializo Peces Comunes
    pezComun = new Peces[numerosPeces];
    for (int i = 0; i < pezComun.length; i++) {
      pezComun[i] = new Peces(random(0, width), random(0, height), 90, 70, "pez2");
    }
  }

  void mostrar() {
    // muestro tiburon
    tiburon.mostrar();
    // Muestro peces payasos
    for (int i = 0; i < pezPayaso.length; i++) {
      pezPayaso[i].mostrar();
    }
    // Muestro peces Dorados
    for (int i = 0; i < pezDorado.length; i++) {
      pezDorado[i].mostrar();
    }
    // Muestro peces Comunes
    for (int i = 0; i < pezComun.length; i++) {
      pezComun[i].mostrar();
    }
    // Muestro algas
    for (int i = 0; i < algas.length; i++) {
      algas[i].mostrar();
    }
  }
}
