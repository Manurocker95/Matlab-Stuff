function  integral  = rectangleRight(f, a , b )
%rectangleRight Calculates the integral of the function f in the interval (a,b), assuming the function has a constant value: that of evaluating the function in the rightmost point of the interval -> f(b).
%Practica 1 Integración Numérica
%Micah Paul Davis, Manuel Rodríguez Matesanz and Andrés Casado Elvira
%Enero de 2018 


%The rightmost point: pn(x) = f(b)
    integral = f(b)*(b-a);

    
end

