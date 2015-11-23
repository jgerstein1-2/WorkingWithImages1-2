//declare PImages
PImage mainImage;
PImage mask;

void setup() {
  size(800, 600);
  
  //initialize
  mainImage = loadImage("pug.jpg");
  mask = loadImage("mask.jpg");
  
  //mask
  mainImage.mask(mask);
}

void draw() {
  background(0);
  
  //display masked image
  image(mainImage, mouseX, mouseY);
}