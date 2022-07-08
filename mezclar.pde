void mezclar (int[] cartas) {            
  int auxiliar;                              
  for (int i=0; i<cartas.length-1; i++) {       
    int indexLimite = cartas.length-i;          
    int indexRandom = int(random(indexLimite)); 
    auxiliar = cartas[indexRandom];             
    cartas[indexRandom] = cartas[indexLimite -1]; 
    cartas[indexLimite-1] = auxiliar;
  }
}
