//declare PImage
PImage pug;

int mosaicSize = 2;

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
  background(pug);

  for (int x = 0; x < width; x += mosaicSize) {
    for (int y = 0; y < height; y += mosaicSize) {
      fill(pug.get(x, y));    
      rect(x, y, mosaicSize, mosaicSize);
    }
  }
}

void keyPressed() {
  if (keyCode == UP) {
    mosaicSize++;
  } else if (keyCode == DOWN) {
    mosaicSize--;
  }
}