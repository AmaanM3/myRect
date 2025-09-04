int rx = 50;
int ry = 30;
int rw = 100;
int rh = 70;




void setup(){
size(400,400);
background(255);
}



void draw(){
stroke(0,0,255);
  int x = 0;
  int y = 0;


// 1. Version where I use lines and ints to make an rect
/*
line(rx, ry, rx+rw, ry);
line(rx, ry+rh, rx+rw, ry+rh);
line(rx, ry, rx, ry+rh);
line(rx+rw, ry, rx+rw, ry+rh);
*/

// 2. Version where I use points instead of lines to make an rect
// I use draw to draw each point continuerly until it reaches my x <= rw statement
/*

if ( x <=rw){
point(rx+x, ry);        //upper line
point(rx+x, ry+rh);     // bottom line
x++;
}

if ( y <= rh){
point(rx, ry + y);       // left line
point(rx + rw, ry + y);  // right line
y++;
}
*/

// 3. Version where I use while loop instead of lines or points to make an rect
/*
while ( x <=rw){
point(rx+x, ry);        //upper line
point(rx+x, ry+rh);     // bottom line

x++;
}

while ( y <= rh){
point(rx, ry + y);       // left line
point(rx + rw, ry + y);  // right line
y++;
}

*/

// 3. Version where I used for loop instead of while loops, lines or points to make an rect
for  (int i = 0; i <= rw; i++) {
point(rx+i, ry);        //upper line
point(rx+i, ry+rh);     // bottom line


}

for  (int i = 0; i <= rh; i++) {
point(rx, ry+i);        //upper line
point(rx+rw, ry+i);     // bottom line
}
  }
