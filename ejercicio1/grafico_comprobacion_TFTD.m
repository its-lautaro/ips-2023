% Este script comprueba los cálculos analíticos de las TFTD de los sistemas
n=[0:1:9];
d = delta(10);
% Respuesta en frecuencia del sistema S1
s = [-0.7:0.001:0.7];
X = TFTD(n,sistema_S1(d),s);
figure;
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
print -dpng ejercicio1/img/comprobacion_frecuencia_S1;

% Respuesta en frecuencia del sistema S2
figure;
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
print -dpng ejercicio1/img/comprobacion_frecuencia_S2;

% Respuesta en frecuencia del sistema S3
figure;
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
print -dpng ejercicio1/img/comprobacion_frecuencia_S3;

% Respuesta en frecuencia del sistema S4
figure;
X = TFTD(n,sistema_S4(d),s);
% Módulo de la TFTD
subplot(1, 2, 1);
plot(s, abs(X));
xlabel('Frecuencia (Hz)');
xlim([-0.7 0.7]);
ylabel('Módulo');
title('Módulo TFTD y_4');
% Fase de la TFTD
subplot(1, 2, 2);
plot(s, angle(X));
xlabel('Frecuencia (Hz)');
xlim([-0.7 0.7]);
ylabel('Fase (radianes)');
title('Fase TFTD y_4');
print -dpng ejercicio1/img/comprobacion_frecuencia_S4;
