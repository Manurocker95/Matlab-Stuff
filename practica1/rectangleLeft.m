function  integral  = rectangleLeft(f, a , b )
%rectangleLeft Calculates the integral of the function f in the interval (a,b), assuming the function has a constant value: that of evaluating the function in the leftmost point of the interval -> f(a).
%Practica 1 Integración Numérica
%Micah Paul Davis, Manuel Rodríguez Matesanz and Andrés Casado Elvira
%Enero de 2018 


%   Leftmost Point: pn(x) = f(a)
    integral = f(a)*(b-a);
    
end

