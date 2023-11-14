//Projet AJLI Zakaria
class Rectangle
{
  float x=random(0,width-50);
  float y=random(0,height-50);
  float w = random(0,40);
  float h = random(0,70);
void show()
{
  strokeWeight(3);
  rect(x, y, w, h);
}
}
