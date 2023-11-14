% Implementacion de filtro FIR de 3 ramas de retardo diseñado en el ejercicio 2
function y = filtro3(x)
    % Longitud de la señal de entrada
    L = length(x);
    % Inicializar la señal de salida y con ceros
    y = zeros(1, L);

    % Coeficientes del sistema
    a0 = 1;
    a1 = -0.45;
    a2 = 0.091125;
    a3 = -0.04100625;
    n1 = 8820;
    n2 = 26460;
    n3 = 35280;

    % Ecuación del sistema
    for n = 1:L
        y(n) = a0 * x(n);
        if n - n1 > 0
            y(n) = y(n) + a1 * x(n - n1);
        end
        if n - n2 > 0
            y(n) = y(n) + a2 * x(n - n2);
        end
        if n - n3 > 0
            y(n) = y(n) + a3 * x(n - n3);
        end
    end
end
