int tileW = 16;
float rings = 33;
PFont font;
PImage infos;
String usedImage = "irene";
JSONArray json;
color FG = #412dc5;
PGraphics pg, typo;

void setup() {
  size(900, 900);
  pixelDensity(2);
  font = createFont("sans.otf", 1000);
  pg = createGraphics(width, height);
  typo = createGraphics(width, height);

  //infos.filter(INVERT);
  input = loadImage("../input/" + usedImage + ".jpg");

  input.resize(width, height);
  components = new ArrayList<PImage>();

  String folder = "components/";

  components.add(loadImage("../" + folder + "7.png"));
  components.add(loadImage("../" + folder + "6.png"));
  components.add(loadImage("../" + folder + "5.png"));
  components.add(loadImage("../" + folder + "4.png"));
  components.add(loadImage("../" + folder + "3.png"));
  components.add(loadImage("../" + folder + "2.png"));
  components.add(loadImage("../" + folder + "1.png"));
}

void draw() {
  background(#ffffff);
  drawPg();
  image(pg, 0, 0);
  rec(30, 360, true);
}
