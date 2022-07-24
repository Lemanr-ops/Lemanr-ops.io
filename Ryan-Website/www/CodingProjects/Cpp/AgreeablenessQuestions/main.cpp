#include <iostream>
#include <fstream>
#include <cmath>
#include <cstring>
using namespace std;

//Questions: 2 7 12 17 22 27 32 37 42 47

int main(){

int A_score = 14;
int* address_A_score = &A_score;
int A_score_DataSet[9];
cout << "This is the Agreeableness section of the Big Five Personality test \nAnswer these questions using these numbers: \n1 = disagree\n2 = slightly disagree\n3 = neutral\n4 = slightly agree\n5 = agree\n\n";

cout << "Feel little concern for others ";
cin >> A_score_DataSet[0];
A_score_DataSet[0] *= -1;
cout << "Am interested in people ";
cin >> A_score_DataSet[1];
cout << "Insult people ";
cin >> A_score_DataSet[2];
A_score_DataSet[2] *= -1;
cout << "Sympathize with others' feelings ";
cin >> A_score_DataSet[3];
cout << "Am not interested in other people's problems ";
cin >> A_score_DataSet[4];
A_score_DataSet[4] *= -1;
cout << "Have a soft heart ";
cin >> A_score_DataSet[5];
cout << "Am not really interested in others ";
cin >> A_score_DataSet[6];
A_score_DataSet[6] *= -1;
cout << "Take time out for others ";
cin >> A_score_DataSet[7];
cout << "Feel others' emotions ";
cin >> A_score_DataSet[8];
cout << "Make people feel at ease ";
cin >> A_score_DataSet[9];

for(int x=0; x<10; ++x){
*address_A_score += A_score_DataSet[x];
}
cout << "Your total score for Agreeableness is "<< *address_A_score;

//Just some new concept I did successfully, probably won't make it in
//final program
cout << "\n now I'll try to add results to Results.txt";
ofstream myfile ("Results.txt");
if (myfile.is_open())
{
    myfile << "Your score is " << A_score;
    myfile.close();
}
return 0;
}

