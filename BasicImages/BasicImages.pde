//declare PImage
PImage pug;

float scaleFactor = .1;

void setup() {
  size(800, 600);
  background(0);

  //load pug picture into PImage
  pug = loadImage("dog.jpg");

  //display image from center
  imageMode(CENTER);
}

void draw() {
  //choose a random scale factor
  scaleFactor = random(.001, .5);
  //display pug at random location, with a random size based on scale factor
  image(pug, random(width), random(height), pug.width*scaleFactor, pug.height*scaleFactor);
}