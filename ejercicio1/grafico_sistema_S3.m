% Grafico de respuesta impulsional y respuesta en frecuencia de Sistema S3

% Respuesta impulsional
n=[-1:4];
x=zeros(size(n));
x(2)=1/2;
x(3)=3/8;
x(4)=3/16;
x(5)=3/32;
x(6)=3/64;

figure;
stem(n, x, 'filled');
xlabel('Instante (n)'); % Etiqueta del eje x
ylabel('Amplitud (h)'); % Etiqueta del eje y
ylim([0 1]);
title('Respuesta impulsional de S3'); % Título del gráfico
grid on; % Activa la cuadrícula en el gráfico
legend('h[n]'); % Agrega una leyenda
print -dpng 'ejercicio1/img/S3_impulsional' % Importar figura

% Respuesta en frecuencia
s = -0.7:0.001:0.7;
H_s = (1/4)./(1-(1/2)*exp(-1*i * 2 * pi * s)) + ((1/4)*exp(-1*i * 2 * pi * s))/((1-(1/2)*exp(-1*i * 2 * pi * s)));

figure;
subplot(2, 1, 1);
plot(s, abs(H_s));
xlabel('s');
xlim([-0.7 0.7]);
ylabel('Módulo');
title('Módulo de H_3(s)');

subplot(2, 1, 2);
plot(s, angle(H_s));
xlabel('s');
xlim([-0.7 0.7]);
ylabel('Fase (radianes)');
title('Fase de H_3(s)');

print -dpng 'ejercicio1/img/S3_frecuencia' % Importar figura
