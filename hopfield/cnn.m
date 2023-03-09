// Definir un conjunto de datos de ejemplo de imágenes
X = load_images("ruta/a/carpeta/imagenes")
Y = [1; 2; 1; 2; 1; 2; ...]

// Crear un modelo de red neuronal convolucional
model = train_cnn(X, Y, [3 3], [2 2], [16 32], "relu", "softmax", "crossentropy", 100, 0.01)

// Evaluar el modelo con nuevas imágenes
X_test = load_images("ruta/a/otra/carpeta/imagenes")
Y_pred = predict(model, X_test)

// Imprimir la clase predicha por el modelo
println("Clase predicha:", Y_pred)

