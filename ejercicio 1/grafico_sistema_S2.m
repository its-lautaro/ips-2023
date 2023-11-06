% Grafico de respuesta impulsional y respuesta en frecuencia de Sistema S2

% Respuesta impulsional
n=[-1:3];
x=zeros(size(n));
x(2)=1/2;
x(3)=-1/2;

stem(n, x, 'filled');
xlabel('Instante (n)'); % Etiqueta del eje x
ylabel('Amplitud (h)'); % Etiqueta del eje y
ylim([-1 1]);
title('Respuesta impulsional de S2'); % Título del gráfico
grid on; % Activa la cuadrícula en el gráfico
legend('h[n]'); % Agrega una leyenda
print -f1 -dpng img/S2_impulsional % Importar figura

% Respuesta en frecuencia
s = -0.7:0.001:0.7;

H_s = (1/2)-(1/2).*exp(-1*i * 2 * pi * s);

subplot(2, 1, 1);
plot(s, abs(H_s));
xlabel('s');
xlim([-0.7 0.7]);
ylabel('Módulo');
title('Módulo de H(s)');

subplot(2, 1, 2);
plot(s, angle(H_s));
xlabel('s');
xlim([-0.7 0.7]);
ylabel('Fase (radianes)');
title('Fase de H(s)');

print -f1 -dpng img/S2_frecuencia % Importar figura
