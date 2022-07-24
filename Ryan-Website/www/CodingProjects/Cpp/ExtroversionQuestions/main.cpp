#include <iostream>
#include <cmath>
#include <cstring>
using namespace std;

//Questions: 1 6 11 16 21 26 31 36 41 46
int main(){

int E_score = 20;
int* address_E_score = &E_score;
int E_score_DataSet[9];
cout << "This is the Extroversion section of the Big Five Personality test \nAnswer these questions using these numbers: \n1 = disagree\n2 = slightly disagree\n3 = neutral\n4 = slightly agree\n5 = agree\n\n";

cout << "Am the life of the party ";
cin >> E_score_DataSet[0];
cout << "dont talk alot ";
cin >> E_score_DataSet[1];
E_score_DataSet[1] *= -1;
cout << "feel comfortable around people ";
cin >> E_score_DataSet[2];
cout << "keep in the background ";
cin >> E_score_DataSet[3];
E_score_DataSet[3] *= -1;
cout << "start conversations ";
cin >> E_score_DataSet[4];
cout << "have little to say ";
cin >> E_score_DataSet[5];
E_score_DataSet[5] *= -1;
cout << "talk to a lot of different people at parties ";
cin >> E_score_DataSet[6];
cout << "dont like to draw attention to myself ";
cin >> E_score_DataSet[7];
E_score_DataSet[7] *= -1;
cout << "dont mind being the center of attention ";
cin >> E_score_DataSet[8];
cout << "am quiet around people ";
cin >> E_score_DataSet[9];
E_score_DataSet[9] *= -1;

for(int x=0; x<10; ++x){
*address_E_score += E_score_DataSet[x];
}
cout << "Your total score for Extroversion is "<< *address_E_score;
return 0;
}
