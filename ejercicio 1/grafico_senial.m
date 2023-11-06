%Script para generar graficos

% Llama a la función para obtener los valores de n y x
[n, x] = senial(20312);

% Grafica la señal
stem(n, x, 'filled');
xlabel('Instante (n)'); % Etiqueta del eje x
ylabel('Amplitud (x)'); % Etiqueta del eje y
title('Señal del ejercicio 1'); % Título del gráfico
grid on; % Activa la cuadrícula en el gráfico
legend('senial.m'); % Agrega una leyenda
print -f1 -dpng img/senial % Importar figura

% Calcular la TFTD
[s,X] = TFTD(n,x);

% Graficar el módulo de la TFTD
subplot(2, 1, 1);
plot(s, abs(X));
xlabel('Frecuencia (Hz)');
xlim([-0.5 0.5]);
ylabel('Módulo');
legend('senial.m');
title('Módulo de la TFTD');

% Graficar la fase de la TFTD
subplot(2, 1, 2);
plot(s, angle(X));
xlabel('Frecuencia (Hz)');
xlim([-0.5 0.5]);
ylabel('Fase (radianes)');
legend('senial.m');
title('Fase de la TFTD');
print -f1 -dpng img/TFTD_senial % Importar figura
