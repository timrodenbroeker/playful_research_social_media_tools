int tileW = 30;
float rings = 20;
PFont font;
PImage infos; 
String head1 = "Coding\nSystems";
String head2 = "Online\nWorkshop";
String dates = "March 30/31 2024";
String message = "Few spots left";

JSONArray json;
color FG = #412dc5;
PGraphics pg, typo;

void setup() {
  size(900,900);
  pixelDensity(2);
  font = createFont("sans.otf", 1000);
  pg = createGraphics(width, height);
  typo = createGraphics(width, height);
  
  //infos.filter(INVERT);

  //input = loadImage("../input/yeh.jpg");
  //input = loadImage("../input/eva.jpg");
  //input = loadImage("../input/irene.jpg");
  input = loadImage("../input/timflashkl.jpg");
  
  input.resize(width, height);
  components = new ArrayList<PImage>();
  
  components.add(loadImage("../components2/7.png"));
  components.add(loadImage("../components2/6.png"));
  components.add(loadImage("../components2/5.png"));
  components.add(loadImage("../components2/4.png"));
  components.add(loadImage("../components2/3.png"));
  components.add(loadImage("../components2/2.png"));
  components.add(loadImage("../components2/1.png"));
  

}

void draw() {
  background(#ffffff);
  drawPg();
  //drawTypo();
  //blendMode(DIFFERENCE);
  image(pg, 0, 0);
  //fill(#FF6400,200);
  //rect(0,0,width,height);
  //blendMode(NORMAL);
  //image(infos, 0, 0);

  rec(30, 360,true);
}
