// Alan Fung
// 1-2b
// Sept 18, 2020

// Variables =========================================
int bg1, bg2, bg3;
int bunny;
int hill1, hill2, hill3, hill4, hill5, hill6;
int cloud1, cloud2, cloud3, cloud4;

void setup() 
{
  size(800, 600);
  
  // initialize background hills
  bg1 = 0;
  bg2 = 400;
  bg3 = 800;
  
  // initalize bunny
  bunny = 100;
  
  //initalize small hills
  hill1 = 0;
  hill2 = 200;
  hill3 = 400;
  hill4 = 600;
  hill5 = 800;
  hill6 = 1000;
  
  //initalize cloud
  cloud1= -50;
  cloud2= -100;
  cloud3= 0;
  cloud4= -50;

} // END SETUP =========================




void draw() {
  //sky
  background(3, 173, 255);
  strokeWeight(0);
  
  //cloud
  fill(255);
  stroke(255);
  strokeWeight(0);
  ellipse(cloud1, 200, 100, 100);
  ellipse(cloud2, 200, 100, 100);
  ellipse(cloud3, 200, 100, 100);
  ellipse(cloud4, 150, 100, 100);
  
  //move cloud
  cloud1 = cloud1 + 1;
  if (cloud1 > 850) {
    cloud1 = -50;
  }
  cloud2 = cloud2 + 1;
  if (cloud2 > 850) {
    cloud2 = -50;
  }
  cloud3 = cloud3 + 1;
  if (cloud3 > 850) {
    cloud3 = -50;
  }
  cloud4 = cloud4 + 1;
  if (cloud4 > 850) {
    cloud4 = -50;
  }
  
  //background hills
  fill(3, 255, 93);
  ellipse(bg1, 400, 400, 400);
  ellipse(bg2, 400, 400, 400);
  ellipse(bg3, 400, 400, 400);
  
  //move hills
  bg1 = bg1 + 2;
  bg2 = bg2 + 2;
  bg3 = bg3 + 2;
  
  //loop the hills
  if (bg1 > 1000) {
    bg1 = -200;
  }
  if (bg2 > 1000) {
    bg2 = -200;
  }
  if (bg3 > 1000) {
    bg3 = -200;
  }
  //small hills
  fill(55, 129, 64);
  strokeWeight(0);
  ellipse(hill1, 400, 200, 200);
  ellipse(hill2, 400, 200, 200);
  ellipse(hill3, 400, 200, 200);
  ellipse(hill4, 400, 200, 200);
  ellipse(hill5, 400, 200, 200);
  ellipse(hill6, 400, 200, 200);
  
  //move hills
  hill1 = hill1 + 4;
  if (hill1 > 1000) {
    hill1 = -200;
  }
  hill2 = hill2 + 4;
  if (hill2 > 1000) {
    hill2 = -200;
  }
  hill3 = hill3 + 4;
  if (hill3 > 1000) {
    hill3 = -200;
  }
  hill4 = hill4 + 4;
  if (hill4 > 1000) {
    hill4 = -200;
  }
  hill5 = hill5 + 4;
  if (hill5 > 1000) {
    hill5 = -200;
  }
  hill6 = hill6 + 4;
  if (hill6 > 1000) {
    hill6 = -200;
  }
  
  //ground
  fill(234, 213, 90);
  rect(0, 400, 800, 200);
  
  //blob
  fill(255);
  strokeWeight(0);
  ellipse(bunny, 450, 200, 200); //head
  ellipse(bunny-50, 350, 50, 100); //left ear
  ellipse(bunny+50, 350, 50, 100); //right ear
  fill(0);
  ellipse(bunny+50, 450, 30, 30);
  ellipse(bunny-50, 450, 30, 30);
  
  //move bunny
  bunny = bunny + 6;
  if (bunny > 1000) {
    bunny = -100;
  }
  
} // END DRAW ========================== 
