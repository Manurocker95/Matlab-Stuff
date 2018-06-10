%Practica 3 Ra�ces Num�ricas de Funciones No Lineales
%Micah Paul Davis, Manuel Rodr�guez Matesanz and Andr�s Casado Elvira
%Enero de 2018 

%% Ejercicio 1 M�todo bisecci�n
fun = @(x) x*sin((x^2)/2) + exp(-x);

a = -0.0001;
b = 3;
tolerancy = 0.0001;

options = optimset('Display','iter');
root_fzero = fzero(fun, [a, b], options)
root_Bisection = bisection(fun,a,b,tolerancy)

%% Ejercicio 2 M�todo de Newton-Raphson
fun = @(x) x*sin((x^2)/2) + exp(-x);

xinit = 0;
tolerancy = 0.001;
iterations = 10;

raiz_NewtonRaphson = newtonraphson(fun, xinit, tolerancy, iterations)