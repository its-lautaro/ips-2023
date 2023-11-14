% Gráfico de la respuesta impulsional del filtro de 3 ramas del ejercicio 2
n = (1:53000);

% cascada canal -> filtro
y = canald(delta(length(n)));
y = filtro3(y);

figure;
stem(n,y,"filled");
xlim([1 length(y)]);
xlabel('Instante (n)');
ylabel('Amplitud (h)');
title('Respuesta impulsional del sistema canal + filtro 3');
legend('h[n]'); % Agrega una leyenda
grid on;
print -dpng ejercicio2/img/resp_filtro3
