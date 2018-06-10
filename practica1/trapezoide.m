function [ integral ] = trapezoide( f,a,b )
%trapezoide Calculates the integral of the function f in the interval (a,b), using the extremes of the interval (a,b) to define a trapezoide whose area aproximates that of the integral. 
%Practica 1 Integración Numérica
%Micah Paul Davis, Manuel Rodríguez Matesanz and Andrés Casado Elvira
%Enero de 2018 

integral =(b-a)*(f(b)+f(a))/2;
end

