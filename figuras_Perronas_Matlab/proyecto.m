clear, clc

% Definir patrones de entrada que representen logos de marcas de tecnología famosas

% Apple logo
apple = [0 0 1 1 1 1 1 0 0;         0 1 0 0 0 0 0 1 0;         1 0 0 0 0 0 0 0 1;         1 0 0 0 0 0 0 0 1;         1 1 1 1 1 1 1 1 1;         1 0 0 0 0 0 0 0 1;         1 0 0 0 0 0 0 0 1;         1 0 0 0 0 0 0 0 1;         0 1 1 1 1 1 1 1 0];
         
% IBM logo
ibm = [1 1 1 1 0 0 1 1 1 1;       0 0 1 1 0 0 1 1 0 0;       0 0 1 1 0 0 1 1 0 0;       0 0 1 1 0 0 1 1 0 0;       0 0 1 1 0 0 1 1 0 0;       0 0 1 1 0 0 1 1 0 0;       0 0 1 1 0 0 1 1 0 0;       0 0 1 1 0 0 1 1 0 0;       1 1 1 1 1 1 1 1 1 1];
       
% Oracle logo
oracle = [0 0 0 0 0 0 1 1 1 1 0 0 0 0 0 0;          0 0 0 0 1 1 0 0 0 0 1 1 0 0 0 0;          0 0 0 1 0 0 0 0 0 0 0 0 1 1 0 0;          0 0 0 1 0 0 0 0 0 0 0 0 1 1 0 0;          0 0 1 0 0 0 0 0 0 0 0 0 0 0 1 0;          0 0 1 0 0 0 0 0 0 0 0 0 0 0 1 0;          0 1 0 0 0 0 0 0 0 0 0 0 0 1 0 0;          0 1 0 0 0 0 0 0 0 0 0 0 0 1 0 0;          1 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0;          1 

% patrón 4: Logo de Intel
x4 = [ 1 1 1 1 1 1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 1 1 1 1 1 1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -

% Patron 6 (representa el logo de Samsung)
x6 = [1, 1, 1, 1, 1, 1, -1, -1, -1, -1, -1, 1, 1, 1, 1, 1, -1, -1, -1, -1, -1, 1, 1, 1, 1, 1, -1, -1, -1, -1, -1, 1, 1, 1, 1];

% Patron 7 (representa el logo de HP)
x7 = [-1, -1, -1, -1, -1, -1, 1, 1, 1, 1, 1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1];

% Patron 8 (representa el logo de Lenovo)
x8 = [1, 1, 1, 1, 1, 1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, -1, -1, -1, -1, -1, -1, -1, -1, -1];

% Patron 9 (representa el logo de Cisco)


x9 = [1, 1, 1, 1, 1, 1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 1, 1, 1, 1, -1, -1, -1, -1, 1, 1, 1, 1, -1, -1, -1, -1, 1, 1, 1];

% Patron 10 (representa el logo de Intel)
x10 = [1, -1, -1, -1, 1, 1, -1, 1, -1, 1, 1, -1, -1, 1, 1, -1, -1, 1, -1, -1, -1, 1, 1, 1, -1, 1, -1, 1, 1, -1, -1, -1, 1, 1, 1];

% Definir patrones de entrada para los logos de Microsoft y Google
x5 = [-1, -1, -1, -1, -1, 1, 1, 1, 1, -1, -1, -1, -1, 1, 1, 1, 1, -1, -1, -1, -1, -1, 1, 1, 1, 1, -1, -1, -1, -1, -1];
x6 = [1, 1, 1, 1, 1, 1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1];

% Calcular las matrices de pesos para los logos de Microsoft y Google
x5mul = x5(:) * x5(:)';
x6mul = x6(:) * x6(:)';
w2 = w1 + x5mul + x6mul;

% Definir patrón de entrada para el logo de Google
x7 = [1, 1, 1, 1, 1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1];

% Utilizar la matriz de pesos para identificar el patrón de entrada
u0 = x7;
ulast = x7;
c=1;

while (1)
  u0 = u0 * w2;

  % Aplicar función de activación thresold
  for i=1:1:35
    if u0(i) > 0
      u0(i) = 1;
    else
      u0(i) = -1;
    endif
  endfor

  if (u0 == ulast)
      fprintf('Patrón encontrado después de %d iteraciones\n', c);
      u0
      ulast
      break;
  endif

  c = c + 1;
  ulast = u0;
end

