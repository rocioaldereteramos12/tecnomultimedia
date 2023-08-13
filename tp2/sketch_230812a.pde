PImage imagen;
int cant = 32;
int tam;
int tam2;

void setup() {
  size(800, 400);
  imagen = loadImage("imagen.jpg");
}

void draw() {
  background(255, 209, 220);

  tam = 800 / cant;
  tam2 = tam / 2;

  Cuadrados(cant, tam);
  Circulos(cant, tam);

  image(imagen, 0, 0, 400, 400);
}

void keyPressed() {
  cant = 32;
}

void mousePressed() {
  cant++;
}

void Cuadrados(int num, int medida) {
  for (int x = 0; x < num; x++) {
    for (int y = 0; y < num; y++) {
      if ((x + y) % 2 == 0) {
        fill(148, 0, 180);
        rect(x * medida, y * medida, medida, medida);
      }
    }
  }
}

void Circulos(int num, int circleSize) {
  for (int x = 0; x < num; x++) {
    for (int y = 0; y < num; y++) {
      if ((x + y) % 2 != 0) {
        float distan = dist(mouseX, mouseY, x * circleSize, y * circleSize);
        float tono = calculardist(distan);
        fill(255, 0, 0, tono);

        float esquinaX1 = x * circleSize;
        float esquinaY1 = y * circleSize;
        float esquinaX2 = (x + 1) * circleSize;
        float esquinaY2 = y * circleSize;
        float esquinaX3 = x * circleSize;
        float esquinaY3 = (y + 1) * circleSize;
        float esquinaX4 = (x + 1) * circleSize;
        float esquinaY4 = (y + 1) * circleSize;

        ellipse(esquinaX1, esquinaY1, tam2, tam2);
        ellipse(esquinaX2, esquinaY2, tam2, tam2);
        ellipse(esquinaX3, esquinaY3, tam2, tam2);
        ellipse(esquinaX4, esquinaY4, tam2, tam2);
      }
    }
  }
}

float calculardist(float distan) {
  return distan * 255 / dist(width, height, 0, 0);
}
