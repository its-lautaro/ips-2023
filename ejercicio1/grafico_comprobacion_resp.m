% Este script comprueba los cálculos analíticos de las respuestas impulsionales de los sistemas
n=[0:1:9];
d = delta(10);

% Respuesta impulsional del sistema S1
figure;
stem(n, sistema_S1(d), 'filled');
xlabel('Instante (n)');
ylabel('Amplitud (h)');
title('Salida de S1 para una delta');
grid on;
legend('y_1[n]');
print -dpng ejercicio1/img/comprobacion_impulsional_S1;

% Respuesta impulsional del sistema S2
figure;
stem(n, sistema_S2(d), 'filled');
xlabel('Instante (n)');
ylabel('Amplitud (h)');
title('Salida de S2 para una delta');
grid on;
legend('y_2[n]');
print -dpng ejercicio1/img/comprobacion_impulsional_S2;

% Respuesta impulsional del sistema S3
figure;
stem(n, sistema_S3(d), 'filled');
xlabel('Instante (n)');
ylabel('Amplitud (h)');
title('Salida de S3 para una delta');
grid on;
legend('y_3[n]');
print -dpng ejercicio1/img/comprobacion_impulsional_S3;

% Respuesta impulsional del sistema S4
figure;
stem(n, sistema_S4(d), 'filled');
xlabel('Instante (n)');
ylabel('Amplitud (h)');
title('Salida de S4 para una delta');
grid on;
legend('y_4[n]');
print -dpng ejercicio1/img/comprobacion_impulsional_S4;
