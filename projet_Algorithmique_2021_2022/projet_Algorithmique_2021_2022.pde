//Projet AJLI Zakaria

float distanceX = 0;
float distanceY = 0;
int n = 50;
Rectangle rectangle;
ArrayList<Rectangle>rect = new ArrayList<Rectangle>();
void setup()
{
  size(600,600);
}
void draw()
{
  background(255);
  for(int i=0;i<n;i++){
    rectangle = new Rectangle();
       rectangle.show();
       rect.add(rectangle);
       println(rect.size());
  }
//Brute force
  int start = millis();
  for(int i=0;i<n;i++){
    for(int j=i+1;j<n;j++){
   if(intersection(rect.get(i),rect.get(j))==true){
    stroke(255,0,0);
    rect.get(i).show();
    rect.get(j).show();
    
   }
    }
    int temp = millis()- start;
    println("temps brute force = "+temp); 
    
}
  noLoop();
}
//fonction d'intersection
boolean intersection(Rectangle rect1,Rectangle rect2)
{
  distanceX = abs((rect1.x+rect1.w/2)-(rect2.x+rect2.w/2));
  distanceY = abs((rect1.y+rect1.h/2)-(rect2.y+rect2.h/2));
  float largeur = rect1.w/2+rect2.w/2;
  float hauteur = rect1.h/2+rect2.h/2;
  if(distanceX < largeur){
     if(distanceY < hauteur){
       return true;
     }
  }
  return false;
}
