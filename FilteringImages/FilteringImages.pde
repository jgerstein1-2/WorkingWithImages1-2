PImage mayim;

void setup() {
  mayim = loadImage("mayim.jpg");
  size(500, 281);
}

void draw() {
  image(mayim, 0, 0);
  filter(POSTERIZE, 3);
}