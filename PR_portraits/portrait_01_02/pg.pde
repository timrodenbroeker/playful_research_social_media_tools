PImage input;
int tilesX, tilesY;
ArrayList<PImage> components;


void drawPg() {

  pg.beginDraw();
  pg.background(0);
  pg.imageMode(CENTER);
  
  pg.fill(#f1f1f1);
  pg.noStroke();

  float abstand = (width/2) / rings;
  

  for (int i = 0; i < rings; i++) {
    float elements = rings  + i*2;
    for (int j = 0; j < elements; j++) {

      float x = width/2 + sin(radians((360/elements)*j + frameCount))*abstand*i;
      float y = height/2 + cos(radians((360/elements)*j))*abstand*i;

      int px = int(x);
      int py = int(y);

      color c = input.get(px, py);

      float b = brightness(c);

      int selector = int(map(b, 0, 255, components.size()-1, 0));

      pg.push();
      pg.translate(x, y);
      pg.image(components.get(selector), 0, 0, tileW, tileW);
      pg.pop();
      
    }
  }

  pg.endDraw();

}
