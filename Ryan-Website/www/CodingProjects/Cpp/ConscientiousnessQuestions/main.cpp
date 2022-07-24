#include <iostream>
#include <cmath>
#include <cstring>
using namespace std;

//Questions: 3 8 13 18 23 28 33 38 43 48
int main(){

int C_score = 14;
int* address_C_score = &C_score;
int C_score_DataSet[9];
cout << "This is the Conscientiousness section of the Big Five Personality test \nAnswer these questions using these numbers: \n1 = disagree\n2 = slightly disagree\n3 = neutral\n4 = slightly agree\n5 = agree\n\n";

cout << "Am always prepared ";
cin >> C_score_DataSet[0];
cout << "Leave my belongings around ";
cin >> C_score_DataSet[1];
C_score_DataSet[1] *= -1;
cout << "Pay attention to details ";
cin >> C_score_DataSet[2];
cout << "Make a mess of things ";
cin >> C_score_DataSet[3];
C_score_DataSet[3] *= -1;
cout << "Get chores done right away ";
cin >> C_score_DataSet[4];
cout << "Often forget to put things back in their proper place ";
cin >> C_score_DataSet[5];
C_score_DataSet[5] *= -1;
cout << "Like order ";
cin >> C_score_DataSet[6];
cout << "Shirk my duties ";
cin >> C_score_DataSet[7];
C_score_DataSet[7] *= -1;
cout << "Follow a schedule ";
cin >> C_score_DataSet[8];
cout << "Am exacting in my work ";
cin >> C_score_DataSet[9];

for(int x=0; x<10; ++x){
*address_C_score += C_score_DataSet[x];
}
cout << "Your total score for Conscientiousness is "<< *address_C_score;
return 0;
}
