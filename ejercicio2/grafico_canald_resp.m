% Verificación de respuesta impulsional del sistema canald
n = (1:20000);

y = canald(delta(length(n)));

figure;
stem(n,y,"filled");

xlim([1 length(n)]);
xlabel('Instante (n)');
ylabel('Amplitud (h)');
title('Respuesta impulsional de canald');
legend('h[n]'); % Agrega una leyenda
grid on;
print -dpng ejercicio2/img/resp_canald_verificacion
