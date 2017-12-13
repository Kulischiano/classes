class Kvadrat { 
 float x, y, s; 
  Kvadrat(float _x, float _y, float _s) { 

   this.x = _x; 
   this.y = _y; 
   this.s = _s; 
}

void right(float _s) { 
 this.x += _s; 
  } 
}

class NewKva extends Kvadrat { 
 color c5; 
  NewKva(float _x, float _y, float _s, color _c5) { 
   super(_x, _y, _s); 
   this.c5 = _c5; 
}

void draw() { 
 fill(this.c5); 
  rect(this.x, this.y, this.s, this.s); 
   } 
}

NewKva[] k_array; 
 void setup() 
{
  
size(900,700); 
 k_array = new NewKva[20]; 
  for (int i = 0; i < 10; i++) { 
   k_array[i] = new NewKva(random(width), random(height), 90.0, int(random(#000000, #ff0000))); 
    } 
}

void draw() {  
 background(0); 
  for (int i = 0; i < 10; i++) { 
   k_array[i].draw(); 
   k_array[i].right(random(4.5)); 
    } 
}