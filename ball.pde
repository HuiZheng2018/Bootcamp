

class Ball {

  PVector position;   
  PVector velocity;   
  float radius;        
  color colour;        
  boolean crossMidpoint = false;


  Ball() {

    position = new PVector(width/2, 0);
    velocity = new PVector(0, random(0.9,6.5)); 
    radius = random(7,33);

    colour   = color(116, 190, 229);
  }

  void draw() {

    if (position.y>=height/2) {
     
      stroke(#F26B11);
      strokeWeight(5);
    } else {
   
      stroke(#250FF5);
      strokeWeight(5);
    }
  
    fill(colour);
    ellipse(position.x, position.y, 2*radius, 2*radius);

   
  }

  void move() {

    position.x = position.x + velocity.x;
    position.y = position.y + velocity.y;

    if (position.x - radius < 0 && velocity.x < 0)
    {
      velocity.x = -1*velocity.x;
    } else if (position.x + radius > width && velocity.x > 0)
    {
      velocity.x = -1*velocity.x;
    }

    if (position.y - radius < 0 && velocity.y < 0)
    {
      velocity.y = -1*velocity.y;
    } else if (position.y + radius > height && velocity.y > 0)
    {

      velocity.y = -1*velocity.y;
    }

    if (position.y>=height/2) {
      colour=color(#F57CDF);
      //  stroke(#F26B11);
      //strokeWeight(10);
    } else {
      colour= color(116, 190, 229);
      //stroke(#250FF5);
      // strokeWeight(10);
    }

    if (position.y > height /2 && crossMidpoint == false)
    {
      crossMidpoint = true;

      velocity.x = random(-5, 5);
      velocity.y = random(-5, 5);
    }
  }  // End of move
}
