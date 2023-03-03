#include <iostream>
#include <algorithm>
#include <vector>
using namespace std;

const int N = 5; // Número de ciudades
const int INF = 1e9; // Infinito

int dist[N][N] = {{0, 2, 9, 10, 5},
                  {2, 0, 6, 4, 8},
                  {9, 6, 0, 3, 7},
                  {10, 4, 3, 0, 1},
                  {5, 8, 7, 1, 0}}; // Distancias entre las ciudades

vector<int> obtenerCiudades() {
    vector<int> ciudades;
    for (int i = 0; i < N; i++) {
        ciudades.push_back(i);
    }
    return ciudades;
}

int calcularDistancia(vector<int> ciudades) {
    int distancia = 0;
    for (int i = 0; i < N-1; i++) {
        distancia += dist[ciudades[i]][ciudades[i+1]];
    }
    distancia += dist[ciudades[N-1]][ciudades[0]];
    return distancia;
}

void imprimirCiudades(vector<int> ciudades) {
    for (int i = 0; i < N; i++) {
        cout << ciudades[i]+1 << " ";
    }
    cout << ciudades[0]+1 << endl;
}

int main() {
    vector<int> ciudades = obtenerCiudades();
    int mejorDistancia = INF;
    vector<int> mejorRecorrido;
    do {
        int distancia = calcularDistancia(ciudades);
        if (distancia < mejorDistancia) {
            mejorDistancia = distancia;
            mejorRecorrido = ciudades;
        }
    } while (next_permutation(ciudades.begin(), ciudades.end()));
    cout << "El recorrido más corto es: ";
    imprimirCiudades(mejorRecorrido);
    cout << "La distancia recorrida es: " << mejorDistancia << endl;
    return 0;
}

