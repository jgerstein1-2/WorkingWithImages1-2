//declare PImage
PImage pug;
PImage kittyBurrito;

int mosaicSize = 2;
float scaleFactor = .3;

void setup() {
  //canvas size = pug size
  size(600, 400);

  //load pug picture into PImage
  pug = loadImage("dog.jpg");
  kittyBurrito = loadImage("cat.jpg");

  //use pug as background
  background(pug);

  imageMode(CENTER);
}

void draw() {
  background(pug);

  image(kittyBurrito, mouseX, mouseY, kittyBurrito.width*scaleFactor, kittyBurrito.height*scaleFactor);
}

void keyPressed() {
  if (keyCode == UP) {
    mosaicSize++;
  } else if (keyCode == DOWN) {
    mosaicSize--;
  }
}