% Salida del sistema canal + filtro 2 para una delta
n = (1:44200);

% cascada canal -> filtro
y = canald(delta(length(n)));
y = filtro2(y);

figure;
stem(n,y,"filled");
xlim([1 length(y)]);
xlabel('Instante (n)');
ylabel('Amplitud (h)');
title('Respuesta impulsional del sistema canal + filtro 2');
legend('h[n]'); % Agrega una leyenda
grid on;
print -dpng ejercicio2/img/resp_filtro2
