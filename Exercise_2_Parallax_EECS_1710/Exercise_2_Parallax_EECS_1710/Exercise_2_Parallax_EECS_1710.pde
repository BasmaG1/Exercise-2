PImage back;
int bx = 0, bx2 = 600;

PImage mountain;
int ox = 0, ox2 = 600;

PImage mid;
int mx = 0, mx2 = 600;

PImage fore;
int fx = 0, fx2 = 600;

PImage sun;
int sx = 350, sx2 = 600;

int red=255,green=255,blue=255;

void setup(){
size (600,450);
back=loadImage("back.png");
back.resize(603,450);

mountain=loadImage("mountain.png");
mountain.resize(603,450);

mid = loadImage("mid.png");
mid.resize(603,450);

fore = loadImage("fore.png");
fore.resize(603,450);

sun=loadImage("sun.png");
sun.resize(50,50);

}
void draw(){
  tint(red,blue,green);
image(back,bx,0); image(back,bx2,0);
image(mountain,ox,0); image(mountain,ox2,0);
image(mid,mx,0); image(mid,mx2,0);
image(fore,fx,0); image(fore,fx2,0); 
image(sun,sx,0); //image(sun,sx2,0);

bx--; bx2--;

ox--;ox2--;

mx-=2; mx2-=2;

fx-=3; fx2-=3;

sx++;sx2--;

red--; green--; blue--;
if (red==0) red=255; if (green==0) green=255;  if (blue==0) blue=255; 
if (bx<-600){bx=600;} if (bx2<-600){bx2=600;}
if (ox<-600){ox=600;} if (ox2<-600){ox2=600;}
if (mx<-600){mx=600;} if (mx2<-600){mx2=600;}
if (fx<-600){fx=600;} if (fx2<-600){fx2=600;}
if (sx>600)sx=350;

}
