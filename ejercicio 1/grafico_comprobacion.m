% Este script comprueba los cálculos analíticos para la caracterización de los sistemas
n=[0:1:9];
d = delta(10);

% Respuesta impulsional del sistema S1
stem(n, sistema_S1(d), 'filled');
xlabel('Instante (n)');
ylabel('Amplitud (h)');
title('Salida de S1 para una delta');
grid on;
legend('y_1[n]');
print -f1 -dpng img/comprobacion_impulsional_S1;
clf; % Guardar figura y limpiar pantalla para graficar de nuevo

% Respuesta impulsional del sistema S2
stem(n, sistema_S2(d), 'filled');
xlabel('Instante (n)');
ylabel('Amplitud (h)');
title('Salida de S2 para una delta');
grid on;
legend('y_2[n]');
print -f1 -dpng img/comprobacion_impulsional_S2;
clf;

% Respuesta impulsional del sistema S3
stem(n, sistema_S3(d), 'filled');
xlabel('Instante (n)');
ylabel('Amplitud (h)');
title('Salida de S3 para una delta');
grid on;
legend('y_3[n]');
print -f1 -dpng img/comprobacion_impulsional_S3;
clf;

% Respuesta impulsional del sistema S4
stem(n, sistema_S4(d), 'filled');
xlabel('Instante (n)');
ylabel('Amplitud (h)');
title('Salida de S4 para una delta');
grid on;
legend('y_4[n]');
print -f1 -dpng img/comprobacion_impulsional_S4;
clf;

% Respuesta en frecuencia del sistema S1
s = [-0.7:0.001:0.7];
X = TFTD(n,sistema_S1(d),s);
% Módulo de la TFTD
subplot(1, 2, 1);
plot(s, abs(X));
xlabel('Frecuencia (Hz)');
xlim([-0.7 0.7]);
ylabel('Módulo');
title('Módulo TFTD y_1');
% Fase de la TFTD
subplot(1, 2, 2);
plot(s, angle(X));
xlabel('Frecuencia (Hz)');
xlim([-0.7 0.7]);
ylabel('Fase (radianes)');
title('Fase TFTD y_1');
print -f1 -dpng img/comprobacion_frecuencia_S1;
clf;

% Respuesta en frecuencia del sistema S2
X = TFTD(n,sistema_S2(d),s);
% Módulo de la TFTD
subplot(1, 2, 1);
plot(s, abs(X));
xlabel('Frecuencia (Hz)');
xlim([-0.7 0.7]);
ylabel('Módulo');
title('Módulo TFTD y_2');
% Fase de la TFTD
subplot(1, 2, 2);
plot(s, angle(X));
xlabel('Frecuencia (Hz)');
xlim([-0.7 0.7]);
ylabel('Fase (radianes)');
title('Fase TFTD y_2');
print -f1 -dpng img/comprobacion_frecuencia_S2;
clf;

% Respuesta en frecuencia del sistema S3
X = TFTD(n,sistema_S3(d),s);
% Módulo de la TFTD
subplot(1, 2, 1);
plot(s, abs(X));
xlabel('Frecuencia (Hz)');
xlim([-0.7 0.7]);
ylabel('Módulo');
title('Módulo TFTD y_3');
% Fase de la TFTD
subplot(1, 2, 2);;
plot(s, angle(X));
xlabel('Frecuencia (Hz)');
xlim([-0.7 0.7]);
ylabel('Fase (radianes)');
title('Fase TFTD y_3');
print -f1 -dpng img/comprobacion_frecuencia_S3;
clf;

% Respuesta en frecuencia del sistema S4
X = TFTD(n,sistema_S4(d),s);
% Módulo de la TFTD
subplot(1, 2, 1);
plot(s, abs(X));
xlabel('Frecuencia (Hz)');
xlim([-0.7 0.7]);
ylabel('Módulo');
title('Módulo TFTD y_3');
% Fase de la TFTD
subplot(1, 2, 2);
plot(s, angle(X));
xlabel('Frecuencia (Hz)');
xlim([-0.7 0.7]);
ylabel('Fase (radianes)');
title('Fase TFTD y_4');
print -f1 -dpng img/comprobacion_frecuencia_S4;
