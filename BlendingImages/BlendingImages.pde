//declare PImages
PImage cat;
PImage dog;

void setup() {
  size(600, 400);
  //initialize images
  cat = loadImage("cat600400.jpg");
  dog = loadImage("dog600400.jpg");
  
  //create the blend
  cat.blend(dog, 0, 0, 600, 400, 0, 0, 600, 400, SOFT_LIGHT);
}

void draw() {
  //draw the blended image
  image(cat, 0, 0);
}