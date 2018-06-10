function root = newtonraphson( f, x, tol, iterations )
%newtonraphson Dada una funci�n cont�nua f, un valor x inicial, una tolerancia, y un numero de finito de iteraciones a probar, �ste m�todo devuelve una raiz de la funci�n 

%Practica 3 Ra�ces Num�ricas de Funciones No Lineales
%Micah Paul Davis, Manuel Rodr�guez Matesanz and Andr�s Casado Elvira
%Enero de 2018 

    h = 0.001;
    for i = 0:iterations
        fdiff = (f(x-h) - f(x+h))/(2*h);
        update = f(x) / fdiff;
        x = x + update;
        if abs(update) <= tol
            break;
        end
    end
    root = x;
end

