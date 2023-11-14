% Muestra la señal de audio original y la salida del sistema para la misma
[x, fs] = audioread('ejercicio2/audio.wav'); % Señal original
y = canald(x) % Salida del sistema

% Reproducir sonido original
sound(x,fs);

% Reproducir salida del sistema
sound(y,fs);

% Graficar señal a la salida del sistema
figure;
plot(1:length(y),y);
xlabel('Tiempo (x)');
xlim([0,length(y)])
ylabel('Amplitud (y)');
title('Salida del sistema');
grid on;
hold on;
print -dpng ejercicio2/img/salida_canald;

% Graficar la señal original sobre la salida del sistema en otro color
title('Comparación con el sonido original');
plot(1:length(x),x,'r');
legend('Salida de canald','Señal original');
print -dpng ejercicio2/img/comparacion_canald;
