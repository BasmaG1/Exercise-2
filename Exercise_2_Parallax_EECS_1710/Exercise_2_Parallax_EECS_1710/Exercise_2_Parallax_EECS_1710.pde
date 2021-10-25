PImage back;
int bx = 0, bx2 = 600;
PImage mid;
int mx = 0, mx2 = 600;
PImage fore;
int fx = 0, fx2 = 600;
void setup(){
size (600,450);
back=loadImage("back.png");
back.resize(603,450);
mid = loadImage("mid.png");
mid.resize(603,450);
fore = loadImage("fore.png");
fore.resize(603,450);
}
void draw(){
image(back,bx,0); image(back,bx2,0);
image(mid,mx,0); image(mid,mx2,0);
image(fore,fx,0); image(fore,fx2,0); 

bx--; bx2--;

mx-=2; mx2-=2;

fx-=3; fx2-=3;

if (bx<-600){bx=600;} if (bx2<-600){bx2=600;}
if (mx<-600){mx=600;} if (mx2<-600){mx2=600;}
if (fx<-600){fx=600;} if (fx2<-600){fx2=600;}


}
