//funciones con parámetros que  NO retornan valor


void botones1  (color c1, color c2, int posX, int posY, int ancho, int alto, String texto, int pX, int pY) {
  if (mouseX > 400 && mouseX < 500 && mouseY > 400 &&  mouseY< 440) {

    noStroke ();
    fill (c1);
    rect (posX, posY, ancho, alto);
    fill (c2);
    text (texto, pX, pY);
  } else {

    noStroke ();
    fill (c2);
    rect (posX, posY, ancho, alto);
    fill (c1);
    text (texto, pX, pY);
  }
}
void botones2(color c1, color c2, int posX, int posY, int ancho, int alto, String texto, int pX, int pY) {

  if (mouseX > 200 && mouseX < 300 && mouseY > 400 && mouseY< 440) {
    noStroke ();
    fill (c1);
    rect (posX, posY, ancho, alto);
    fill (c2);
    text (texto, pX, pY);
  } else {

    noStroke ();
    fill (c2);
    rect (posX, posY, ancho, alto);
    fill (c1);
    text (texto, pX, pY);
  }
}
