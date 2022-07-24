#include <iostream>
using namespace std;

int main(){
  //A matrix with point cordinates on a graph. Each row is one such cordinate like 5, -5
int Points[4][2] = {{0,0} , {5,-5} , {1,1} , {-1,-1}};
//Just some variable I can manipulate to use in the if loop
int y = 0;
int Calc_Y;
// just because I am working with 4 points here. I didn't have this written differently before to allow any number of points but reduced this to the most simple form for this particular question to save run time.
while(y<=3){
//So for this problem I noticed that the slop of his graph is exactly y=-x . So this line is saying do funcion if a point's X cordinate multipled by -1 matches it's Y cordinate meaning
// at the very least it is part of the line if stretched to infinity
if(-1*Points[y][0] == Points[y][1] && -1*Points[y][1] == Points[y][0]){
Calc_Y= -1*Points[y][1];
// This is to test if the point is not just in-line with the slope but rather is on the line it'self. To clarify "On_Line" is anywhere that matches the slope, "On_Segment" says the point
// is on the line as seen on the assignment.
  if(Calc_Y >= -2 && Calc_Y <= 4){
    cout<<"ON_SEGMENT \n";
  }  else{
      cout << "ON_LINE \n";}
//This utilizes the known Y cordinate to determine if the point is to the left of the line
} else if(-1*Points[y][0] > Points[y][1]){
  cout << "LEFT \n";
}
//This utilizes the known Y cordinate to determine if the point is to the right of the line.
else if(-1*Points[y][0] < Points[y][1]){
  cout << "RIGHT \n";
}
//Then of course manipulating Y to do this same process for the next point cordinate.
++y;
}
return 0;
}
