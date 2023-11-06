%Script para graficar senial
% Llama a la función para obtener los valores de n y x
[n, x] = senial(020312);

% Grafica la señal
stem(n, x, 'filled');
xlabel('Instante (n)'); % Etiqueta del eje x
ylabel('Amplitud (x)'); % Etiqueta del eje y
title('Señal del ejercicio 1'); % Título del gráfico
grid on; % Activa la cuadrícula en el gráfico
legend('senial.m'); % Agrega una leyenda

