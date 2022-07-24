#include <iostream>
#include <cmath>
#include <cstring>
using namespace std;

//Questions: 4 9 14 19 24 29 34 39 44 49
int main(){

int N_score = 38;
int* address_N_score = &N_score;
int N_score_DataSet[9];
cout << "This is the Neuroticism section of the Big Five Personality test \nAnswer these questions using these numbers: \n1 = disagree\n2 = slightly disagree\n3 = neutral\n4 = slightly agree\n5 = agree\n\n";

cout << "Get stressed out easily ";
cin >> N_score_DataSet[0];
N_score_DataSet[0] *= -1;
cout << "Am relaxed most of the time ";
cin >> N_score_DataSet[1];
cout << "Worry about things ";
cin >> N_score_DataSet[2];
N_score_DataSet[2] *= -1;
cout << "Seldom feel blue ";
cin >> N_score_DataSet[3];
cout << "Am easily distrubed ";
cin >> N_score_DataSet[4];
N_score_DataSet[4] *= -1;
cout << "Get upset easily ";
cin >> N_score_DataSet[5];
N_score_DataSet[5] *= -1;
cout << "Change my mood a lot ";
cin >> N_score_DataSet[6];
N_score_DataSet[6] *= -1;
cout << "Have frequent mood swings ";
cin >> N_score_DataSet[7];
N_score_DataSet[7] *= -1;
cout << "Get irritated easily ";
cin >> N_score_DataSet[8];
N_score_DataSet[8] *= -1;
cout << "Often feel blue ";
cin >> N_score_DataSet[9];
N_score_DataSet[9] *= -1;

for(int x=0; x<10; ++x){
*address_N_score += N_score_DataSet[x];
}
cout << "Your total score for Neuroticism is "<< *address_N_score;
return 0;
}
