% Implementacion del sistema canald
function y = canald(x)
    % Longitud de la señal de entrada
    L = length(x);

    % Inicializar la señal de salida y con ceros
    y = zeros(1, L);

    % Coeficientes del sistema
    a0 = 1;
    a1 = 0.45;
    a2 = 0.2025;

    % Ecuación del sistema
    for n = 1:L
        y(n) = a0 * x(n);
        if n - 8820 > 0
            y(n) = y(n) + a1 * x(n - 8820);
        end
        if n - 17640 > 0
            y(n) = y(n) + a2 * x(n - 17640);
        end
    end
end

