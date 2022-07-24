#include <iostream>
#include <cmath>
#include <cstring>
using namespace std;

//Questions: 5 10 15 20 25 30 35 40 45 50
int main(){

int O_score = 8;
int* address_O_score = &O_score;
int O_score_DataSet[9];
cout << "This is the Openness To Experience section of the Big Five Personality test \nAnswer these questions using these numbers: \n1 = disagree\n2 = slightly disagree\n3 = neutral\n4 = slightly agree\n5 = agree\n\n";

cout << "Have a rich vocabulary ";
cin >> O_score_DataSet[0];
cout << "Have difficulty understanding abstract ideas ";
cin >> O_score_DataSet[1];
O_score_DataSet[1] *= -1;
cout << "Have a vivid imagination ";
cin >> O_score_DataSet[2];
cout << "Am not interested in abstract ideas ";
cin >> O_score_DataSet[3];
O_score_DataSet[3] *= -1;
cout << "Have excellent ideas ";
cin >> O_score_DataSet[4];
cout << "Do not have a good imagination ";
cin >> O_score_DataSet[5];
O_score_DataSet[5] *= -1;
cout << "Am quick to understand things ";
cin >> O_score_DataSet[6];
cout << "Use difficult words ";
cin >> O_score_DataSet[7];
cout << "Spend time reflecting on things ";
cin >> O_score_DataSet[8];
cout << "Am full of ideas ";
cin >> O_score_DataSet[9];

for(int x=0; x<10; ++x){
*address_O_score += O_score_DataSet[x];
}
cout << "Your total score for Openness to Experience is "<< *address_O_score;
return 0;
}
