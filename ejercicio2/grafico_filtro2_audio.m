% Salida del sistema canal + filtro 2 para el archivo de audio

[x, fs] = audioread('ejercicio2/audio.wav'); % Señal original

y = canald(x); % Salida del sistema
y = filtro2(y);

% Reproducir salida del sistema
sound(y,fs);

% Graficar señal a la salida del sistema
figure;
plot(1:length(y),y);
xlabel('Tiempo (x)');
xlim([0,length(y)]);
ylabel('Amplitud (y)');
title('Salida del sistema canal + filtro 2');
grid on;
hold on;

% Graficar la señal original sobre la salida del sistema en otro color
title('Comparación con el sonido original');
plot(1:length(y),x,'r');
legend('Salida de filtro2','Señal original');
xlim([0,length(y)]);
print -dpng ejercicio2/img/comparacion_filtro2;
