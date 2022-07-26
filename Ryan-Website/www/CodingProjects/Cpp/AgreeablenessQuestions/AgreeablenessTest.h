//Questions: 2 7 12 17 22 27 32 37 42 47
using namespace std;

//TODO change A_score to just A_score_DataSet[0] then start the questions with A_score_DataSet[1]
// Then I can change the += operator to a sum function, the common lisp equivlant to (sum A_score_DataSet) is the idea.

float Agreeablenesstest(){

//int A_score = 14;
int * address_A_score = &A_score;
int A_score_DataSet; ; // from https://www.programiz.com/cpp-programming/memory-management
    // should creat a new array (above) then allocate dynamic memory below as shown in link
A_score_DataSet = new int[9]
cout << "This is the Agreeableness section of the Big Five Personality test \nAnswer these questions using these numbers: \n1 = disagree\n2 = slightly disagree\n3 = neutral\n4 = slightly agree\n5 = agree\n\n";
14 += A_score_DataSet[0]
cout << "Feel little concern for others ";
cin >> A_score_DataSet[1];
A_score_DataSet[1] *= -1;
cout << "Am interested in people ";
cin >> A_score_DataSet[2];
cout << "Insult people ";
cin >> A_score_DataSet[3];
A_score_DataSet[3] *= -1;
cout << "Sympathize with others' feelings ";
cin >> A_score_DataSet[4];
cout << "Am not interested in other people's problems ";
cin >> A_score_DataSet[5];
A_score_DataSet[5] *= -1;
cout << "Have a soft heart ";
cin >> A_score_DataSet[6];
cout << "Am not really interested in others ";
cin >> A_score_DataSet[7];
A_score_DataSet[7] *= -1;
cout << "Take time out for others ";
cin >> A_score_DataSet[8];
cout << "Feel others' emotions ";
cin >> A_score_DataSet[9];
cout << "Make people feel at ease ";
cin >> A_score_DataSet[10];

Final_Agree_Score = A_score_DataSet.sum;
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

