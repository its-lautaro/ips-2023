% Graficar las salidas de los sistemas a la señal "senial"

[n,x]=senial(020312);

% Salida para S1
stem(n, sistema_S1(x), 'filled');
xlabel('Instante (n)');
ylabel('Amplitud (x)');
grid on;
title('Salida de S1');
legend('y_1[n]');
print -f1 -dpng img/salida_S1;

% Salida para S2
stem(n, sistema_S2(x), 'filled');
xlabel('Instante (n)');
ylabel('Amplitud (x)');
grid on;
title('Salida de S2');
legend('y_2[n]');
print -f1 -dpng img/salida_S2;

% Salida para S3
stem(n, sistema_S3(x), 'filled');
xlabel('Instante (n)');
ylabel('Amplitud (x)');
grid on;
title('Salida de S3');
legend('y_3[n]');
print -f1 -dpng img/salida_S3;

% Salida para S4
stem(n, sistema_S4(x), 'filled');
xlabel('Instante (n)');
ylabel('Amplitud (x)');
grid on;
title('Salida de S4');
legend('y_4[n]');
print -f1 -dpng img/salida_S4;
