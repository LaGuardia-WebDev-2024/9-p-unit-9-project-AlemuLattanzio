setup = function() {
    size(400, 400);
};

var answer = 1;

draw = function(){
  background(100,100,100);
  fill(0, 0, 0);
  ellipse(200, 200, 375, 375);
  fill(60, 0, 255);
  triangle(200, 104, 280, 280, 120, 280);
  fill(255, 255, 255);
  
  if (answer == 1){
    fill(0, 255, 0);
    text("Yes", 184, 200);
    text("Definitely", 168, 229);
  }
  
  if (answer == 2){ 
  fill(0, 255, 255);
  text("Most", 183, 200);
  text("Likely", 178, 230);
  }
  
  if (answer == 3){
    fill(0, 0, 0);
  text("Maybe", 175, 220);
  }
  
  if (answer == 4){
  fill(255, 255, 0);
  text("Probably", 176, 200);
  text("Not", 184, 230);
  }
  
  if (answer == 5){
  fill(255, 0, 0);
  text("NO!", 185, 225);
  }
  
  if(mousePressed){
  text("drum roll", random(0, 600), random(0, 600));
  drawgrass(10,300);
drawgrass(200,300);
drawgrass(400,300);
  }
  
};

mouseClicked = function(){
  answer = round(random(1, 5));
};


var funWithKeys = function(){
  if(keyPressed){
    var randomIntensity = random(50,255);
    if(key == 'r'){fill(randomIntensity,0,0);}
    if(key == 'g'){fill(0,randomIntensity,0);}
    if(key == 'w'){fill(255,255,255);}
    if(key == 'c'){background(255,255,255,150);}
  }
};


//🟡drawgrass Function - will run when called
var drawgrass = function(grassX, grassY, grassColor){
  textSize(80);
  fill(grassColor);
  text("🎱", grassX, grassY);
  
  textSize(35);
  text("🎱", mouseX, mouseY);
};
