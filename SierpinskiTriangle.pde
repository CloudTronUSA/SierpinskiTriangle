void setup() {
  size(800, 800);
  noLoop();
}
void draw() {
  background(255);
  sierpinski(5, 400, 100, 100, 700, 700, 700);
}
void sierpinski(int depth, float x1, float y1, float x2, float y2, float x3, float y3) {
  if (depth == 0) {
    triangle(x1, y1, x2, y2, x3, y3);
  } else {
    // md points
    float x12 = (x1 + x2)/2;
    float y12 = (y1 + y2)/2;
    float x23 = (x2 + x3)/2;
    float y23 = (y2 + y3)/2;
    float x13 = (x1 + x3)/2;
    float y13 = (y1 + y3)/2;

    sierpinski(depth-1, x1, y1, x12, y12, x13, y13);
    sierpinski(depth-1, x12, y12, x2, y2, x23, y23);
    sierpinski(depth-1, x13, y13, x23, y23, x3, y3);
  }
}
