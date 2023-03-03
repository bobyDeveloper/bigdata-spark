#include <iostream>
using namespace std;

// Clase base
class Animal {
    protected:
        int edad;
    public:
        Animal(int e) {
            edad = e;
        }
        void dormir() {
            cout << "Durmiendo..." << endl;
        }
};

// Clase derivada
class Perro : public Animal {
    private:
        string raza;
    public:
        Perro(int e, string r) : Animal(e) {
            raza = r;
        }
        void ladrar() {
            cout << "¡Guau! ¡Guau!" << endl;
        }
};

int main() {
    Perro p(5, "Labrador");
    cout << "Edad: " << p.edad << endl;
    p.dormir();
    p.ladrar();
    return 0;
}

