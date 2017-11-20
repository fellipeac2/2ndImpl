#include <iostream>
#include <vector>
#include <cmath>

#define TRAINING_RATE 0.1
#define MAX_IT 10

using namespace std;

double fu(double u) {
    return (u > 0) ? 1 : 0;
}

int main() {

    vector<pair<pair<int,int>,int>> samples;
    pair<pair<int,int>, int> s0(pair<int,int>(0,0), 0);
    pair<pair<int,int>, int> s1(pair<int,int>(0,1), 0);
    pair<pair<int,int>, int> s2(pair<int,int>(1,0), 0);
    pair<pair<int,int>, int> s3(pair<int,int>(1,1), 1);
    samples.push_back(s0);
    samples.push_back(s1);
    samples.push_back(s2);
    samples.push_back(s3);


//    cout << "Samples: " << endl;
//    for(int i = 0; i < 4; i++)
//        cout << '\t' << '(' << samples.at(i).first.first <<','<< samples.at(i).first.second << ')' << '=' << samples.at(i).second << endl;
//

    pair<double, double> weights;
    weights.first = 0;
    weights.second = 0;
    double bias = 0;


    double E;
    int t = 0;
    do {
        E = 0;
        for(int i = 0; i < samples.size(); i++) {
            double u = weights.first * samples.at(i).first.first
                       + weights.second * samples.at(i).first.second
                       + bias;
            double output = fu(u);
            double error = samples.at(i).second - output;

            weights.first = weights.first + TRAINING_RATE*error*samples.at(i).first.first;
            weights.second = weights.second + TRAINING_RATE*error*samples.at(i).first.second;
            bias = bias + TRAINING_RATE*error;
            E += fabs(error);
        }
        t++;
    } while (t < MAX_IT && E > 0);

    cout << "Weights and Bias: ";
    cout << weights.first << ", " << weights.second << " e " << bias <<endl;
//    for(int i = 0; i < 4; i++) {
//        double u = weights.first * samples.at(i).first.first
//                   + weights.second * samples.at(i).first.second
//                   + bias;
//        double output = fu(u);
//        cout << output << endl;
//    }
    return 0;
}