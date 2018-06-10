function  integral  = rectangleRight(f, a , b )
%rectangleRight Calculates the integral of the function f in the interval (a,b), assuming the function has a constant value: that of evaluating the function in the rightmost point of the interval -> f(b).
%Practica 1 Integraci�n Num�rica
%Micah Paul Davis, Manuel Rodr�guez Matesanz and Andr�s Casado Elvira
%Enero de 2018 


%The rightmost point: pn(x) = f(b)
    integral = f(b)*(b-a);

    
end

