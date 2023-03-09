// Definir un conjunto de datos de ejemplo de secuencias de texto
X = load_text_sequences("ruta/a/carpeta/texto.txt")
Y = [1; 0; 1; 1; 0; ...]

// Crear un modelo de red neuronal recurrente
model = train_rnn(X, Y, 32, "tanh", "sigmoid", "binarycrossentropy", 100, 0.01)

// Evaluar el modelo con nuevas secuencias de texto
X_test = load_text_sequences("ruta/a/otra/carpeta/texto.txt")
Y_pred = predict(model, X_test)

// Imprimir la salida predicha por el modelo
println("Salida predicha:", Y_pred)

