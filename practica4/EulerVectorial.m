function [ y_s ] = EulerVectorial( f, interval , y0 )
%EulerVectorial
%   f: @(u,v) = [f_1 = @(u,v),
%                f_2 = @(u,v)]
%   a,b: intervalo
%   h: paso de discretizacion
%   y0: vector con valores iniciales

%Practica 4 Raíces Numéricas de Funciones No Lineales
%Micah Paul Davis, Manuel Rodríguez Matesanz and Andrés Casado Elvira
%Enero de 2018 

% Calculamos paso de discretizacion a partir de dos valores consecutivos
h = interval(2) - interval(1);

y_s = zeros(2,size(interval,2));
%Valor Inicial
y_s(:,1)= y0;
%Calculamos los siguientes valores
for i =1:size(interval,2)-1
    u = y_s(1,i);
    v = y_s(2,i);
    y_s(:,i+1)=y_s(:,i) + h.*f(u,v);
end 


end

