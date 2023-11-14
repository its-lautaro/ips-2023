%Script para graficar la función hcanald

% Llama a la función para obtener los valores de n y h
[n, h] = hcanald(20312);

% Grafica la señal
figure;
stem(n, h, 'filled');
xlim([0 length(n)])
xlabel('Instante (n)');
ylabel('Amplitud (h)');
title('Señal h_A[n]');
grid on;
print -dpng ejercicio2/img/resp_canald
