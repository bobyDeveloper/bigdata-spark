// Definir un conjunto de datos de ejemplo
X = [1 1; 1 -1; -1 1; -1 -1]
Y = [1; -1; -1; -1]

// Crear un modelo de perceptrón
model = train_perceptron(X, Y)

// Evaluar el modelo con nuevos datos de entrada
X_test = [1 1; 1 -1; -1 1; -1 -1]
Y_pred = predict(model, X_test)

// Imprimir la salida predicha por el modelo
println("Salida predicha:", Y_pred)

