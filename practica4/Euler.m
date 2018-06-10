function [ y_s ] = Euler( f, t, y0)
% f: y'=f(y,t)
% t: intervalo discretizado
% y0: y(t=a)
%Practica 4 Raíces Numéricas de Funciones No Lineales
%Micah Paul Davis, Manuel Rodríguez Matesanz and Andrés Casado Elvira
%Enero de 2018 


    % Calculamos paso de discretizacion a partir de dos valores consecutivos
    h = t(2) - t(1);

    %Vacio para llenar despues
    y_s = zeros(size(t));
    
    %Valor Inicial
    y_s(1)= y0;
   
    %Calculamos los siguientes valores
    for i =1:size(t,2)-1
        y_s(i+1)=y_s(i) + h*f(y_s(i),t(i));
    end 

end

