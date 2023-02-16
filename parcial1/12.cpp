#include <iostream>
using namespace std;

int main() {

  int year;
  cout << "Enter a year: ";
  cin >> year;

  // leap year if perfectly divisible by 400
  if (year % 400 == 0) {
    cout << year << " is a leap year.";
  }
  // not a leap year if divisible by 100
  // but not divisible by 400
  else if (year % 100 == 0) {
    cout << year << " is not a leap year.";
  }
  // leap year if not divisible by 100
  // but divisible by 4
  else if (year % 4 == 0) {
    cout << year << " is a leap year.";
  }
  // all other years are not leap years
  else {
    cout << year << " is not a leap year.";
  }

  return 0;
}
Ejecutar código
Salida 1

Introduzca un año: 1900
1900 no es un año bisiesto.
Salida 2

Introduzca un año: 2012
2012 es un año bisiesto.
Ejemplo 2: verificar el año bisiesto usando anidado si
#include <iostream>
using namespace std;

int main() {

  int year;

  cout << "Enter a year: ";
  cin >> year;

  if (year % 4 == 0) {
    if (year % 100 == 0) {
      if (year % 400 == 0) {
        cout << year << " is a leap year.";
      }
      else {
        cout << year << " is not a leap year.";
      }
    }
    else {
      cout << year << " is a leap year.";
    }
  }
  else {
    cout << year << " is not a leap year.";
  }

  return 0;
}
