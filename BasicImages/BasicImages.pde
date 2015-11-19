//declare PImage
PImage pug;

void setup() {
  //canvas size = pug size
  size(600, 400);

  //load pug picture into PImage
  pug = loadImage("dog.jpg");

  //use pug as background
  background(pug);

  noStroke();
}

void draw() {
  int x = int(random(width));
  int y = int(random(height));
  float sz = random(2, 30);
  fill(pug.get(x, y));
  ellipse(x, y, sz, sz);
}