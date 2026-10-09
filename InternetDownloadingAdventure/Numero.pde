int cont = 0;

void inicio() {
  background(#030303);

  for (int x = 0; x < width; x+=width/10) {

    for (int y = 0; y < height; y+=height/6) {
      if (x < 320 || x > 750) {
        numero(x+17, y-18);
      }
    }
  }
  image(logo, 130, 0);
}

void numero(int xo, int yo) {
  int x = (int)random(0, 9);
  fill(#00FF1B);
  textSize(60);
  text(x, xo, yo);
  textFont(loadFont("Consolas-48.vlw"));
}
