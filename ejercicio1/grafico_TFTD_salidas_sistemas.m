% TFTD de las salidas de los sistemas a la señal "senial"

[n,x]=senial(020312);
s = [-0.5:0.001:0.5];
figure;
% TFTD S1 Modulo
subplot(1,2,1);
plot(s, abs(TFTD(n,sistema_S1(x),s)));
xlabel('Frecuencia (f)');
xlim([-0.5 0.5]);
ylabel('Amplitud');
grid on;
title('Modulo TFTD S1(x)');
legend('Y_1[n]');
% TFTD S1 Fase
subplot(1,2,2);
plot(s, angle(TFTD(n,sistema_S1(x),s)));
xlabel('Frecuencia (f)');
xlim([-0.5 0.5]);
ylabel('Fase (radianes)');
grid on;
title('Fase TFTD S1(x)');
legend('Y_1[n]');
print -dpng ejercicio1/img/TFTD_salida_S1;

figure;
% TFTD S2 Modulo
subplot(1,2,1);
plot(s, abs(TFTD(n,sistema_S2(x),s)));
xlabel('Frecuencia (f)');
xlim([-0.5 0.5]);
ylabel('Amplitud');
grid on;
title('Modulo TFTD S2(x)');
legend('Y_2[n]');
% TFTD S2 Fase
subplot(1,2,2);
plot(s, angle(TFTD(n,sistema_S2(x),s)));
xlabel('Frecuencia (f)');
xlim([-0.5 0.5]);
ylabel('Fase (radianes)');
grid on;
title('Fase TFTD S2(x)');
legend('Y_2[n]');
print -dpng ejercicio1/img/TFTD_salida_S2;

figure;
% TFTD S3 Modulo
subplot(1,2,1);
plot(s, abs(TFTD(n,sistema_S3(x),s)));
xlabel('Frecuencia (f)');
xlim([-0.5 0.5]);
ylabel('Amplitud');
grid on;
title('Modulo TFTD S3(x)');
legend('Y_3[n]');
% TFTD S3 Fase
subplot(1,2,2);
plot(s, angle(TFTD(n,sistema_S3(x),s)));
xlabel('Frecuencia (f)');
xlim([-0.5 0.5]);
ylabel('Fase (radianes)');
grid on;
title('Fase TFTD S3(x)');
legend('Y_3[n]');
print -dpng ejercicio1/img/TFTD_salida_S3;

figure;
% TFTD S4 Modulo
subplot(1,2,1);
plot(s, abs(TFTD(n,sistema_S4(x),s)));
xlabel('Frecuencia (f)');
xlim([-0.5 0.5]);
ylabel('Amplitud');
grid on;
title('Modulo TFTD S4(x)');
legend('Y_4[n]');
% TFTD S4 Fase
subplot(1,2,2);
plot(s, angle(TFTD(n,sistema_S4(x),s)));
xlabel('Frecuencia (f)');
xlim([-0.5 0.5]);
ylabel('Fase (radianes)');
grid on;
title('Fase TFTD S4(x)');
legend('Y_4[n]');
print -dpng ejercicio1/img/TFTD_salida_S4;
