#include <iostream>

using namespace std;

int main() {
    const int ROWS = 8;
    const int COLS = 16;
    char smiley[ROWS][COLS] = {
        {' ', ' ', ' ', '*', '*', '*', '*', '*', '*', '*', '*', '*', ' ', ' ', ' ', ' '},
        {' ', ' ', '*', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', '*', ' ', ' ', ' '},
        {' ', '*', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', '*', ' ', ' '},
        {'*', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', '*', ' '},
        {'*', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', '*', ' '},
        {'*', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', '*', ' '},
        {' ', '*', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', '*', ' ', ' '},
        {' ', ' ', '*', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', '*', ' ', ' ', ' '}
    };

    for (int i = 0; i < ROWS; i++) {
        for (int j = 0; j < COLS; j++) {
            cout << smiley[i][j];
        }
        cout << endl;
    }

    return 0;
}

