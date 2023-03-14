#include <iostream>
using namespace std;

int main() {
    const int SIZE = 11;
    char apple[SIZE][SIZE];

    // Rellenar la matriz con espacios en blanco
    for(int i = 0; i < SIZE; i++) {
        for(int j = 0; j < SIZE; j++) {
            apple[i][j] = ' ';
        }
    }

    // Establecer los valores de los elementos de la matriz para dibujar el logo de Apple
    for(int i = 0; i < SIZE; i++) {
        for(int j = 0; j < SIZE; j++) {
            if((i == 2 || i == 3) && (j >= 4 && j <= 6)) {
                apple[i][j] = '#';
            } else if((i == 4 || i == 5) && (j >= 2 && j <= 8)) {
                apple[i][j] = '#';
            } else if((i == 6 || i == 7) && (j >= 1 && j <= 9)) {
                apple[i][j] = '#';
            } else if((i == 8 || i == 9) && (j >= 2 && j <= 8)) {
                apple[i][j] = '#';
            } else if((i == 10) && (j >= 3 && j <= 7)) {
                apple[i][j] = '#';
            }
        }
    }

    // Imprimir la matriz
    for(int i = 0; i < SIZE; i++) {
        for(int j = 0; j < SIZE; j++) {
            cout << apple[i][j] << " ";
        }
        cout << endl;
    }

    return 0;
}

