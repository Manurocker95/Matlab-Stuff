% ======================================
% Ejercicio de Manuel Rodríguez Matesanz
% ======================================
%
% Necesitamos velocidad inicial, ángulo de salida, gravedad y el número de
% muestras para tomar en la curva
function [  ] = tiro_parabolico( v0, angle, y_acceleration, samples)

    close all;
    figure;
    hold on;
    grid on;
    axis equal;
    
    %xlim([0 60])
    %ylim([0 60])
    
    v0x = v0 * cosd(angle)     % Velocidad inicial en eje X
    v0y = v0 * sind(angle)     % Velocidad inicial en eje Y    
    x0 = 0;
    y0 = 0;
    a = y_acceleration;
    
    % El tiempo total es el doble de lo que tarda en llegar a la altura máxima.
    % vAm = v0y + a * t;
    % Sabemos que en la altura máxima es 0 la velocidad
    vAm = 0;
    tAm = (vAm-v0y) / a;  
    tf = tAm * 2
    
    % Posición final (Así uso esta variable para el suelo)
    xf = x0 + v0x*tf   
    
    % Vector de tiempos 
    vt=linspace(0,tf,samples);  
    
    % Necesitamos un vector de posiciones en X y otro en Y para pintar
    vectorXPos= x0 + v0x.*vt;                   % Eje X es MRU
    vectorYPos= y0 + v0y.*vt + 0.5*a.*vt.^2;    % Eje Y es MRUA
    
    scatter(vectorXPos(1, :), vectorYPos(1, :));
    plot(vectorXPos(1, :), vectorYPos(1, :));
    
    % Pintamos el suelo con un plot
    suelo_x = [0 xf];
    suelo_y = [0 0];
    plot(suelo_x(1, :), suelo_y(1, :));

    hold off;
end

