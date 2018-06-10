function  integral  = rectangleMiddle(f, a , b )
%rectangleMiddle Calculates the integral of the function f in the interval (a,b), assuming the function has a constant value: that of evaluating the function in the middle point of the interval -> f((b-a)/2).
%Practica 1 Integración Numérica
%Micah Paul Davis, Manuel Rodríguez Matesanz and Andrés Casado Elvira
%Enero de 2018 


%Middle Point: pn(x) = f((b-a)/2)
    integral = f((b-a)/2)*(b-a);

    
end

