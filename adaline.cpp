//
// Created by fellipe on 20/11/17.
//

#include <cmath>
#include <vector>
#include <array>
#include <iostream>

#define O 1 //number of neurons
#define M 2 //number of inputs
#define N 4 //number of samples
#define ALPHA 0.01 //Learning Rate
#define MAX_IT 1000
#define EPSILON 0.001

using namespace std;

typedef array<double, M> input_type;
typedef array<double, O> output_type;
typedef array<pair<input_type, output_type>, N> sample_type;
typedef array<double, O> error_type;
typedef array<double, O> bias_type;
typedef array<array<double, M>,O> weight_type;

double fu(double u) {
    return tanh(u);
}
double ativation_function(double u) {
    return (u > 0) ? 1 : 0;
}

weight_type & init_weight() {
    weight_type * weight = new weight_type();
    for(int o = 0; o < O; ++o) {
        weight_type::value_type value;
        for(int m = 0; m < M; ++m)
            value.at(m) = ((float) (rand() % 1000))/1000;
        weight->at(o) = value;
    }
    return *weight;
}

bias_type & init_bias() {
    bias_type * bias = new bias_type();
    for(int o = 0; o < O; ++o)
        bias->at(o) = 0;//((float) (rand() % 1000))/1000;
    return *bias;
}

sample_type & init_sample() {
    sample_type * samples = new sample_type();
    samples->at(0).first = {0, 0};
    samples->at(0).second = {-1};
    samples->at(1).first = {0, 1};
    samples->at(1).second = {-1};
    samples->at(2).first = {1, 0};
    samples->at(2).second = {-1};
    samples->at(3).first = {1, 1};
    samples->at(3).second = {1};
    return *samples;
}

void print_wb(weight_type w, bias_type b) {
    for(int o = 0; o < O; o++) {
        for(int m = 0; m < M; m++) {
            cout << w[o][m] << ' ';
        }
        cout << b[o];
        cout << endl;
    }
    cout << endl;
}


int main() {

//    srand(time(NULL));
    weight_type weight = init_weight();
    bias_type bias = init_bias();
    sample_type samples = init_sample();


    int t = 0;
    double delta = 0;
    double old_MSE = 100;
    do {
//        print_wb(weight, bias);

        double new_MSE = 0;
        for(int i = 0; i < N; ++i) {
            output_type output;
            error_type error;
            for(int o = 0; o < O; ++o) {
                double u = 0;
                for(int m = 0; m < M; ++m)
                    u += weight[o][m]*samples[i].first[m] + bias[o];
                output[o] = fu(u);
                error[o] = samples[i].second[o] - output[o];
                new_MSE += error[o]*error[o]/(N*O);
//                cout << "new_MSE: " << new_MSE << endl;
                for(int m = 0; m < M; ++m) {
                    weight[o][m] += ALPHA*error[o]*samples[i].first[m];
                }
                bias[o] += ALPHA*error[o];
            }

        }
        delta = old_MSE - new_MSE;
        old_MSE = new_MSE;
        t++;
    } while(t < MAX_IT && delta > EPSILON);

    cout << "Iterações: " << t << endl << "delta: " << delta << endl;

    cout << endl;
    cout << "Pesos e bias: ";
    print_wb(weight, bias);

    cout << "Resultado das amostras: " << endl;

    for(int i = 0; i < N; i++) {
        for (int m = 0; m < M; m++) {
            cout << samples[i].first[m] << ',';
        }
        cout << "=>";
        for(int o = 0; o < O; o++) {
            double u = 0;
            for (int m = 0; m < M; m++) {
                u+=samples[i].first[m] * weight[o][m] + bias[o];
            }
            cout << ativation_function(u) << ",";
        }
        cout << endl;
    }


    return 0;
}