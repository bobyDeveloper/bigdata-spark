#include <iostream>

int main() {
    vector<double> x = {1.0, 2.0, -3.0, 4.0, -5.0};
    double threshold = 2.0;
    vector<double> y = threshold(x, threshold);
    for (int i = 0; i < y.size(); i++) {
        cout << y[i] << " ";
    }
    cout << endl;
    return 0;
}

