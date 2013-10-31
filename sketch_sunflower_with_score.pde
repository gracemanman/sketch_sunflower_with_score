int numberofflower=int(random(5, 20));

//creating a class named myFlower
Sunflower[] myFlower;
color[] flowercolor=new color[numberofflower];
float d;
PFont f;

void setup() {
  background(255);
  size(700, 500);
  smooth();
  myFlower = new Sunflower[numberofflower];
  //defind the number of flowers in the class
  for (int i = 0;i<numberofflower;i++) {
    flowercolor[i]=color(252, random(157, 205), random(78, 203));
    myFlower[i] = new Sunflower(random(0, width), random(height/2, height), flowercolor[i]);
  }
  f=createFont("Arial", 70, true);
}

void draw() {
  background(255);
  fill(#97DEFF);
  rect(0, 0, 700, 300);
  for (int i=0;i<numberofflower;i++) {
    myFlower[i].display();
    myFlower[i].move();
    
    //check distance
    for (int j=i+1;j<numberofflower;j++) {
      d=dist(myFlower[i].x, myFlower[i].y, myFlower[j].x, myFlower[j].y);
      if (d<50) {
        fill(#E80C7A);
        text("+5",myFlower[i].x, myFlower[i].y-100);
      }
      else {
        fill(255);
        text("+0", myFlower[i].x, myFlower[i].y-150);
      }
    }
  }
}



