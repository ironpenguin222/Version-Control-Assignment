class Particle {
  
  PVector position;
  PVector velocity;
  PVector acceleration;
  float r=random(0,255);
  float g=random(0,255);
  float b=random(0,255);
  
  Particle(float x, float y){
    position = new PVector(x, y);
    velocity = new PVector(random(-2, 2), random(-2, 2));
    acceleration = new PVector(0, 0.5);
  }
  
  void update(){
    velocity.add(acceleration);
    position.add(velocity);
  }
  
  void display(){
    fill(r,g,b);
    ellipse(position.x, position.y, 10, 10);
  }
}
