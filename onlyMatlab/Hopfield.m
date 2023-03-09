n: 10      / número de neuronas
p: 5       / número de patrones de entrenamiento
t: 100     / número máximo de iteraciones
eta: 0.1  / tasa de aprendizaje

/ definir los patrones de entrenamiento
x: {{1, -1, -1, 1, 1, -1, -1, 1, 1, -1}, 
    {-1, -1, 1, -1, 1, -1, 1, -1, -1, 1},
    {1, 1, 1, -1, -1, -1, -1, 1, 1, 1},
    {-1, 1, -1, 1, -1, 1, -1, 1, -1, 1},
    {-1, -1, -1, -1, -1, -1, -1, -1, -1, -1}}

/ inicializar la matriz de pesos
w: n × n -> 0

/ aprender los patrones de entrenamiento
para i de 1 a p hacer
  para j de 1 a n hacer
    para k de 1 a n hacer
      si j != k entonces
        w[j,k] := w[j,k] + eta * x[i,j] * x[i,k]
      fin si
    fin para
  fin para
fin para

/ testear la red con un patrón ruidoso
y: {-1, 1, 1, -1, 1, 1, 1, 1, -1, -1}
z: n -> 0
iteracion: 0

repetir
  / actualizar la salida de cada neurona
  para i de 1 a n hacer
    s: 0
    para j de 1 a n hacer
      s := s + w[i,j] * y[j]
    fin para
    z[i] := s
  fin para

  / aplicar la función de activación
  para i de 1 a n hacer
    si z[i] > 0 entonces
      y[i] := 1
    sino
      y[i] := -1
    fin si
  fin para

  / comprobar si se ha alcanzado un estado estable
  si y == z entonces
    imprimir "Estado estable alcanzado en la iteración " + iteracion
    detener
  fin si

  / incrementar el número de iteraciones y continuar
  iteracion := iteracion + 1
hasta iteracion >= t

imprimir "No se ha alcanzado un estado estable después de " + t + " iteraciones"

