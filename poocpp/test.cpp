#include <iostream>
using namespace std;

class Rectangulo {
    private:
        int ancho;
        int altura;
    public:
        void establecerDimensiones(int w, int h) {
            ancho = w;
            altura = h;
        }
        int area() {
            return ancho * altura;
        }
};

int main() {
    Rectangulo r;
    r.establecerDimensiones(5, 7);
    cout << "El área del rectángulo es: " << r.area() << endl;
    return 0;
}

