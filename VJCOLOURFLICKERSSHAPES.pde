color vjcolour;

color openingcolour = #1538F3;
color excitingcolour = #FFFF00;
color inversioncolour = #000000;
color closingcolour = #FFB452;

color[] mycolours = {openingcolour, excitingcolour,inversioncolour,closingcolour};

void setup(){
  //size(640,480);
  fullScreen();
  noCursor();
  
  vjcolour = openingcolour;
}

void draw(){
   float myopacity = ((float)mouseX / (float)width) * 255.0;
   float colourindex = map(mouseY, 0, height, 0,4);
   vjcolour = mycolours[(int)colourindex];
   
   if(mousePressed == true){
     fill(#FFFFFF, (int)myopacity);
   }else{
     fill(vjcolour, (int)myopacity);
   }
   rect(0,0,width, height);
   fill(#900BA0);
   if(frameCount % 10 == 0){
      rect(mouseX,mouseY, 20,20);
   }else{
     ellipse(mouseX,mouseY, 20, 20);
   }
   
   line(mouseY,0,mouseY,height); // map y to x
   line(0,mouseX,width, mouseY); // map origin and destination to x and y 
   line(0, mouseY, width, mouseY); // x intercept
   line(mouseX, 0, mouseX, height);// y intercept
   line(0, mouseX, width, mouseX); // flipped intercept
   line(mouseY, 0, mouseY, height);// flipped intercept
}