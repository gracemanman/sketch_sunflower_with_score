//the following code belongs to the class Sunflower
class Sunflower {
  float x; 
  float y;
  color C;

  Sunflower (float x_, float y_, color C_) {
    x=x_;
    y=y_;
    C=C_;
  }

  void display() {
//I did not change this part
    noStroke();
    fill(#C9FFD5);
    rect(x, y, 5, 125);//the branch of the flower
    fill(#74CEB7);
    ellipse(x+25, y+100, 50, 20);//the right leaf of the flower
    ellipse(x-25, y+100, 50, 20);//the left leaf of the flower
    fill(C);
    ellipse(x, y-25, 25, 25);//the upper petal 
    ellipse(x, y+25, 25, 25);//the lower petal
    ellipse(x-25, y, 25, 25);//the left petal
    ellipse(x+25, y, 25, 25);//the right petal
    ellipse((x-sin(radians(45))*25), (y-sin(radians(45))*25), 25, 25);//the upper left corner petal
    ellipse((x+sin(radians(45))*25), (y-sin(radians(45))*25), 25, 25);//the upper right corner petal
    ellipse((x-sin(radians(45))*25), (y+sin(radians(45))*25), 25, 25);//the lower left corner petal
    ellipse((x+sin(radians(45))*25), (y+sin(radians(45))*25), 25, 25);//the lower right corner petal
    fill(#FFFFCB);
    ellipse(x, y, 50, 50);//the core of the sunflower
  }

  void move() {
    y=y+1;
    if (y>height) {
      y=height/2;
    }
  }
}
