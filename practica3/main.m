%Practica 3 Raíces Numéricas de Funciones No Lineales
%Micah Paul Davis, Manuel Rodríguez Matesanz and Andrés Casado Elvira
%Enero de 2018 

%% Ejercicio 1 Método bisección
fun = @(x) x*sin((x^2)/2) + exp(-x);

a = -0.0001;
b = 3;
tolerancy = 0.0001;

options = optimset('Display','iter');
root_fzero = fzero(fun, [a, b], options)
root_Bisection = bisection(fun,a,b,tolerancy)

%% Ejercicio 2 Método de Newton-Raphson
fun = @(x) x*sin((x^2)/2) + exp(-x);

xinit = 0;
tolerancy = 0.001;
iterations = 10;

raiz_NewtonRaphson = newtonraphson(fun, xinit, tolerancy, iterations)